import 'package:toko_kita/data/models/product/product_model.dart';
import 'package:toko_kita/data/repositories/product/product_repository.dart';

import '../../datasource/remote/product/product_datasource.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDatasource remoteDataSource;

  ProductRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final products = await remoteDataSource.getAllProducts();
      return products;
    } catch (e) {
      // Handle error, possibly log it or rethrow
      print('Error fetching products: $e');
      return [];
    }
  }

  @override
  Future<ProductModel?> getProductById(String id) async {
    try {
      return await remoteDataSource.getProductById(id);
    } catch (e) {
      // Handle error, possibly log it or rethrow
      print('Error fetching product by ID: $e');
      return null;
    }
  }


  @override
  Future<void> addProduct(ProductModel product) async {
    await remoteDataSource.addProduct(product);
  }

  @override
  Future<void> updateProduct({ required String id, required ProductModel product}) async {
    await remoteDataSource.editProduct(id, product);
  }

  @override
  Future<void> deleteProduct(String id) async {
    await remoteDataSource.deleteProduct(id);
  }

}

