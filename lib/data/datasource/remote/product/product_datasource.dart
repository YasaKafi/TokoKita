import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../models/product/product_model.dart';

class ProductDatasource {
  final _firestore = FirebaseFirestore.instance;
  final _collection = 'products';


// Add new product
  Future<void> addProduct(ProductModel product) async {
    final doc = _firestore.collection(_collection).doc();
    await doc.set(product.copyWith(
      id: doc.id,
    ).toJson());
  }

// Edit existing product
  Future<void> editProduct(String id, ProductModel updatedProduct) async {
    final docRef = _firestore.collection(_collection).doc(id);
    await docRef.update(updatedProduct.toJson());
  }

// Delete product
  Future<void> deleteProduct(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }

// Get product by ID
  Future<ProductModel?> getProductById(String id) async {
    final doc = await _firestore.collection(_collection).doc(id).get();
    if (!doc.exists) return null;
    final data = doc.data()!;
    return ProductModel.fromJson(data).copyWith(id: doc.id);
  }

// Get all products
  Future<List<ProductModel>> getAllProducts() async {
    final snapshot = await _firestore.collection(_collection).get();
    return snapshot.docs.map((doc) {
      final data = doc.data();
      return ProductModel.fromJson(data).copyWith(id: doc.id);
    }).toList();
  }
}