import 'package:toko_kita/data/repositories/auth/auth_repository.dart';
import 'package:toko_kita/data/repositories/product/product_repository.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository.dart';
import 'package:toko_kita/data/repositories/sale/sale_repository.dart';
import 'package:toko_kita/features/auth/bloc/auth_bloc.dart';
import 'package:toko_kita/features/history_transaction/bloc/history_transaction_bloc.dart';
import 'package:toko_kita/features/purchase/bloc/purchase_bloc.dart';
import 'package:toko_kita/features/reports/bloc/report_bloc.dart';
import 'package:toko_kita/features/sale/bloc/sale_bloc.dart';
import 'package:toko_kita/features/stock/bloc/stock_bloc.dart';

import '../../data/repositories/report/report_repository.dart';
import '../injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
        ..registerFactory<AuthBloc>(
      () => AuthBloc(authRepository: injector<AuthRepository>()),
    )

    ..registerFactory<StockBloc>(
      () => StockBloc(productRepository: injector<ProductRepository>(), purchaseRepository: injector<PurchaseRepository>()),
    )

    ..registerFactory<PurchaseBloc>(
      () => PurchaseBloc(purchaseRepository: injector<PurchaseRepository>()),
    )
      ..registerFactory<SaleBloc>(
      () => SaleBloc(saleRepository: injector<SaleRepository>(), purchaseRepository: injector<PurchaseRepository>()),
    )
    ..registerFactory<HistoryTransactionBloc>(
      () => HistoryTransactionBloc(
        salesRepository: injector<SaleRepository>(),
        purchaseRepository: injector<PurchaseRepository>(),
      ),
    )
    ..registerFactory<ReportBloc>(
      () => ReportBloc(
        reportRepository: injector<ReportRepository>(),
      ),
    );

  }
}
