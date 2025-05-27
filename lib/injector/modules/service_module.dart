import 'package:toko_kita/data/datasource/remote/auth/auth_datasource.dart';
import 'package:toko_kita/data/datasource/remote/product/product_datasource.dart';
import 'package:toko_kita/data/datasource/remote/purchase/purchase_datasource.dart';
import 'package:toko_kita/data/datasource/remote/sale/sale_datasource.dart';
import '../injector.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<AuthDatasource>(
        () => AuthDatasource(),
    )
      ..registerLazySingleton<ProductDatasource>(
        () => ProductDatasource(),
    )
      ..registerLazySingleton<PurchaseDatasource>(
        () => PurchaseDatasource(),
    )
      ..registerLazySingleton<SaleDatasource>(
        () => SaleDatasource(),
    );

  }
}
