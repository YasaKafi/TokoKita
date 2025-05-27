import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:toko_kita/data/datasource/remote/auth/auth_datasource.dart';
import 'package:toko_kita/data/datasource/remote/product/product_datasource.dart';
import 'package:toko_kita/data/datasource/remote/purchase/purchase_datasource.dart';
import 'package:toko_kita/data/repositories/auth/auth_repository.dart';
import 'package:toko_kita/data/repositories/product/product_repository.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository.dart';
import 'package:toko_kita/data/repositories/report/report_repository.dart';
import 'package:toko_kita/data/repositories/sale/sale_repository.dart';

@GenerateMocks([
  FirebaseFirestore,
  CollectionReference,
  DocumentReference,
  DocumentSnapshot,
  QuerySnapshot,
  QueryDocumentSnapshot,
  AuthDatasource,
  User,
  AuthRepository,
  ReportRepository,
  SaleRepository,
  PurchaseRepository,
  ProductRepository,
  ProductDatasource,
  PurchaseDatasource,



])
void main() {}

