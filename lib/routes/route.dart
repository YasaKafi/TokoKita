
import 'package:go_router/go_router.dart';
import 'package:toko_kita/features/history_transaction/history_transaction_page.dart';

import '../data/models/product/product_model.dart';
import '../features/add_edit_stock/add_edit_stock_page.dart';
import '../features/auth/login_page.dart';
import '../features/purchase/record_purchase_page.dart';
import '../features/sale/record_sale_page.dart';
import '../features/splash/splash_screen.dart';
import '../widgets/bottom_navbar.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/navbar/0',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: 'splash',
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: 'add-edit-stock',
        path: '/add-edit-stock',
        builder: (context, state) {
          final product = state.extra as ProductModel?;
          return AddEditStockPage(product: product);
        },
      ),
      GoRoute(
        name: 'record-sale',
        path: '/record-sale',
        builder: (context, state) => const RecordSalePage(),
      ),
      GoRoute(
        name: 'record-purchase',
        path: '/record-purchase',
        builder: (context, state) => const RecordPurchasePage(),
      ),
      GoRoute(
        name: 'transaction-history',
        path: '/transaction-history',
        builder: (context, state) => const TransactionHistoryPage(),
      ),
      GoRoute(
        name: 'navbar',
        path: '/navbar/:pageIndex',
        builder: (context, state) {
          final pageIndex = int.parse(state.pathParameters['pageIndex'] ?? '0');
          return BottomNavbar(pageIndex: pageIndex);
        },
      ),
    ],
  );
}
