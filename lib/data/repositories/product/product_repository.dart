import 'package:toko_kita/data/models/product/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel?> getProductById(String id);
  Future<void> addProduct(ProductModel product);
  Future<void> updateProduct({required String id, required ProductModel product});
  Future<void> deleteProduct(String id);
}