import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:toko_kita/data/datasource/remote/purchase/purchase_datasource.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository_impl.dart';

// Generate mock class untuk PurchaseDatasource
import '../mocks.mocks.dart';
@GenerateMocks([PurchaseDatasource])

void main() {
  late MockPurchaseDatasource mockDataSource;
  late PurchaseRepositoryImpl repository;

  setUp(() {
    mockDataSource = MockPurchaseDatasource();
    repository = PurchaseRepositoryImpl(remoteDataSource: mockDataSource);
  });

  group('Integration: Pembelian → Penjualan → Laporan', () {
    test('Happy path', () async {
      // Stub method savePurchaseBatch untuk sukses tanpa real implementasi
      when(mockDataSource.savePurchaseBatch(
        purchasePrice: anyNamed('purchasePrice'),
        quantity: anyNamed('quantity'),
        productId: anyNamed('productId'),
      )).thenAnswer((_) async => null);

      // Stub getPurchaseBatches untuk kembalikan data dummy
      when(mockDataSource.getPurchaseBatches('product-001')).thenAnswer((_) async => [
        {'id': 'batch-1', 'purchasePrice': 1000, 'quantity': 10, 'productId': 'product-001'},
        {'id': 'batch-2', 'purchasePrice': 1200, 'quantity': 20, 'productId': 'product-001'},
      ]);

      // Stub updatePurchaseQuantity agar bisa dipanggil tanpa error
      when(mockDataSource.updatePurchaseQuantity(any, any)).thenAnswer((_) async => null);

      // Panggil method repository yang mau diuji
      final hpp = await repository.getHPPandConsumeFIFO(productId: 'product-001', quantity: 25);

      expect(hpp, equals(1000 * 10 + 1200 * 15));
    });

    test('No-stock: throws exception', () async {
      when(mockDataSource.getPurchaseBatches('product-002')).thenAnswer((_) async => [
        {'id': 'batch-3', 'purchasePrice': 1000, 'quantity': 5, 'productId': 'product-002'},
      ]);

      when(mockDataSource.updatePurchaseQuantity(any, any)).thenAnswer((_) async => null);

      expect(
            () async => await repository.getHPPandConsumeFIFO(productId: 'product-002', quantity: 10),
        throwsA(isA<Exception>()),
      );
    });

    test('Storage error: updatePurchaseQuantity throws', () async {
      when(mockDataSource.getPurchaseBatches('product-003')).thenAnswer((_) async => [
        {'id': 'batch-4', 'purchasePrice': 1000, 'quantity': 10, 'productId': 'product-003'},
      ]);

      when(mockDataSource.updatePurchaseQuantity(any, any)).thenThrow(Exception('Storage error while updating stock'));

      expect(
            () async => await repository.getHPPandConsumeFIFO(productId: 'product-003', quantity: 5),
        throwsA(isA<Exception>()),
      );
    });
  });
}
