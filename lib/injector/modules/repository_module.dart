import 'package:toko_kita/data/datasource/remote/auth/auth_datasource.dart';
import 'package:toko_kita/data/datasource/remote/product/product_datasource.dart';
import 'package:toko_kita/data/datasource/remote/sale/sale_datasource.dart';
import 'package:toko_kita/data/repositories/auth/auth_repository.dart';
import 'package:toko_kita/data/repositories/auth/auth_repository_impl.dart';
import 'package:toko_kita/data/repositories/product/product_repository.dart';
import 'package:toko_kita/data/repositories/product/product_repository_impl.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository_impl.dart';
import 'package:toko_kita/data/repositories/sale/sale_repository.dart';
import 'package:toko_kita/data/repositories/sale/sale_repository_impl.dart';
import '../../data/datasource/remote/purchase/purchase_datasource.dart';
import '../../data/repositories/report/report_repository.dart';
import '../../data/repositories/report/report_repository_impl.dart';
import '../injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector
        ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: injector<AuthDatasource>())
    )

    ..registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(remoteDataSource: injector<ProductDatasource>()),
    )

    ..registerLazySingleton<PurchaseRepository>(
      () => PurchaseRepositoryImpl(remoteDataSource: injector<PurchaseDatasource>()),
    )
      ..registerLazySingleton<SaleRepository>(
      () => SaleRepositoryImpl(remoteDatasource: injector<SaleDatasource>()),
    )
      ..registerLazySingleton<ReportRepository>(
      () => ReportRepositoryImpl(
        purchaseDatasource: injector<PurchaseDatasource>(),
        saleDatasource: injector<SaleDatasource>(),
      ),
    );

  }
}
