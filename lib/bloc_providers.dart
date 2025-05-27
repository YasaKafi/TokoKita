

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toko_kita/features/history_transaction/bloc/history_transaction_bloc.dart';
import 'package:toko_kita/features/purchase/bloc/purchase_bloc.dart';
import 'package:toko_kita/features/reports/bloc/report_bloc.dart';
import 'package:toko_kita/features/sale/bloc/sale_bloc.dart';
import 'package:toko_kita/features/stock/bloc/stock_bloc.dart';

import 'features/auth/bloc/auth_bloc.dart';
import 'injector/injector.dart';

class AppProviders{

  final providers = [
    BlocProvider<AuthBloc>(
      create: (_) =>  Injector.instance<AuthBloc>(),
    ),
    BlocProvider<StockBloc>(
      create: (_) =>  Injector.instance<StockBloc>(),
    ),
    BlocProvider<PurchaseBloc>(
      create: (_) =>  Injector.instance<PurchaseBloc>(),
    ),
    BlocProvider<SaleBloc>(
      create: (_) =>  Injector.instance<SaleBloc>(),
    ),
    BlocProvider<HistoryTransactionBloc>(
      create: (_) =>  Injector.instance<HistoryTransactionBloc>(),
    ),
    BlocProvider<ReportBloc>(
      create: (_) =>  Injector.instance<ReportBloc>(),
    ),


  ];

}