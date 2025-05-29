import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository_impl.dart';

import '../mocks.mocks.dart';


void main() {
  late MockPurchaseDatasource mockDatasource;
  late PurchaseRepositoryImpl repository;

  setUp(() {
    mockDatasource = MockPurchaseDatasource();
    repository = PurchaseRepositoryImpl(remoteDataSource: mockDatasource);
  });

  group('getHPPPreview', () {
    test('should return correct HPP using FIFO batches', () async {
      // Arrange
      when(mockDatasource.getPurchaseBatches('fxR3VmEepJat8OAYKXoj')).thenAnswer((_) async => <Map<String, dynamic>>[
        {
          'id': 'batch1',
          'purchasePrice': 1000,
          'quantity': 10,
          'originalQuantity': 10,
        },
        {
          'id': 'batch2',
          'purchasePrice': 1500,
          'quantity': 20,
          'originalQuantity': 20,
        },
      ]);

      // Act
      final result = await repository.getHPPandConsumeFIFO(
        productId: 'fxR3VmEepJat8OAYKXoj',
        quantity: 30,
      );

      // FIFO: 10x1000 + 20x1500 = 10,000 + 30,000 = 40,000
      expect(result, equals(40000));
    });

    test('should throw StockInsufficientException when stock is insufficient', () async {
      // Arrange
      when(mockDatasource.getPurchaseBatches('fxR3VmEepJat8OAYKXoj')).thenAnswer((_) async => [
        {
          'id': 'batch3',
          'purchasePrice': 1000,
          'quantity': 5,
          'originalQuantity': 5,
        },
      ]);

      // Act & Assert
      expect(
            () async => await repository.getHPPandConsumeFIFO(
          productId: 'fxR3VmEepJat8OAYKXoj',
          quantity: 10,
        ),
        throwsA(isA<Exception>()),
      );
    });

    test('should consume stock correctly after FIFO calculation', () async {
      // Arrange
      when(mockDatasource.getPurchaseBatches('fxR3VmEepJat8OAYKXoj')).thenAnswer((_) async => [
        {
          'id': 'batch4',
          'purchasePrice': 1000,
          'quantity': 10,
          'originalQuantity': 10,
        },
        {
          'id': 'batch5',
          'purchasePrice': 1500,
          'quantity': 20,
          'originalQuantity': 20,
        },
      ]);

      // Act
      await repository.getHPPandConsumeFIFO(
        productId: 'fxR3VmEepJat8OAYKXoj',
        quantity: 15,
      );

      // Assert (verify sesuai dengan method sebenarnya)
      verify(mockDatasource.updatePurchaseQuantity('batch4', 0)).called(1);
      verify(mockDatasource.updatePurchaseQuantity('batch5', 15)).called(1);
    });
  });

    group('Form Validation', () {
    bool isValid({required int? quantity, required int? price}) {
      if (quantity == null || price == null) return false;
      if (quantity <= 0 || price <= 0) return false;
      if (quantity > 1000 || price > 1000000) return false; // Contoh batas maksimum
      return true;
    }

    test('should return false for invalid inputs', () {
      expect(isValid(quantity: null, price: 1000), false);
      expect(isValid(quantity: 0, price: 1000), false);
      expect(isValid(quantity: 5, price: 0), false);
      expect(isValid(quantity: -1, price: -100), false);
      expect(isValid(quantity: 1001, price: 1000), false); // Melebihi batas maksimum
    });

    test('should return true for valid inputs', () {
      expect(isValid(quantity: 5, price: 1000), true);
      expect(isValid(quantity: 1000, price: 1000000), true); // Tepat di batas maksimum
    });
  });
}