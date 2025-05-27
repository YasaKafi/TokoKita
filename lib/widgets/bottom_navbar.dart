import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../features/home/home_page.dart';
import '../features/reports/reports_page.dart';
import '../features/stock/stock_page.dart';
import '../features/transactions/transactions_page.dart';
import '../utils/constant.dart';
import '../utils/theme.dart';


class BottomNavbar extends StatefulWidget {
  final int pageIndex;

  const BottomNavbar({Key? key, required this.pageIndex}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int? _selectedIndex;

  final List<Widget> _pages = [
     HomePage(),
     StockPage(),
     TransactionsPage(),
     ReportsPage(),
  ];

  @override
  void didUpdateWidget(covariant BottomNavbar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.pageIndex != oldWidget.pageIndex) {
      setState(() {
        _selectedIndex = widget.pageIndex;
      });
    }
  }


  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.pageIndex;
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: IndexedStack(
        index: _selectedIndex ?? 0,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex ?? 0,
        unselectedLabelStyle: txtThirdSubTitle.copyWith(fontWeight: FontWeight.w600, color: secondaryColor),
        selectedLabelStyle: txtThirdSubTitle.copyWith(fontWeight: FontWeight.w600, color: blackColor),
        unselectedItemColor: secondaryColor,
        selectedItemColor: blackColor,
        onTap: _onItemTapped,
        backgroundColor: baseColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icHome,
              width: 24,
              height: 24,
            ),
            label: 'Home',
            activeIcon: SvgPicture.asset(
              icHomeActive,
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icStock,
              width: 24,
              height: 24,
            ),
            label: 'Stock',
            activeIcon: SvgPicture.asset(
              icStockActive,
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icTransactions,
              width: 24,
              height: 24,
            ),
            label: 'Transactions',
            activeIcon: SvgPicture.asset(
              icTransactionsActive,
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icReports,
              width: 24,
              height: 24,
            ),
            label: 'Reports',
            activeIcon: SvgPicture.asset(
              icReportsActive,
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
