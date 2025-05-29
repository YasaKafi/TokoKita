import 'package:flutter/material.dart';

import 'package:data_table_2/data_table_2.dart';
import 'package:toko_kita/utils/theme.dart';

class TopStockTable extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const TopStockTable({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return DataTable2(
      columnSpacing: 12,
      horizontalMargin: 16,
      minWidth: 300,
      dataTextStyle: txtPrimarySubTitle.copyWith(color: blackColor),
      headingTextStyle: txtPrimarySubTitle.copyWith(color: blackColor),
      headingRowColor: WidgetStateProperty.all(grey),
      columns: const [
        DataColumn(label: Text('No.')),
        DataColumn(label: Text('Product Name')),
        DataColumn(label: Text('Current Quantity')),
      ],

      rows: items
                .asMap()
                .entries
                .map(
                  (entry) => DataRow(
                cells: [
                  DataCell(Text((entry.key + 1).toString())),
                  DataCell(Text(entry.value['name'].toString())),
                  DataCell(Text(entry.value['qty'].toString())),
                ],
              ),
            )
                .toList(),
    );
  }
}
