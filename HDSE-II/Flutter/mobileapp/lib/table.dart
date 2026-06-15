import 'package:flutter/material.dart';

class TableUI extends StatelessWidget {
  const TableUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
      width: double.infinity,
      child: DataTable(
        columns: [
          DataColumn(label: Text("S No")),
          DataColumn(label: Text("Student Name")),
          DataColumn(label: Text("City")),
        ], 
        rows: [
          DataRow(cells: [
            DataCell(Text("1")),
            DataCell(Text("Ali")),
            DataCell(Text("Karachi")),
          ]),
          DataRow(cells: [
            DataCell(Text("2")),
            DataCell(Text("Hassan")),
            DataCell(Text("Karachi")),
          ]),
          DataRow(cells: [
            DataCell(Text("3")),
            DataCell(Text("Adnan")),
            DataCell(Text("Lahore")),
          ]),
        ]),
    ),
    );
  }
}