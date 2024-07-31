import 'package:flutter/material.dart';
import 'package:rental_marina/presentation/widget/transaction_list.dart';

class PembukuanPage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(date: '2024-07-20', description: 'Service Fee', amount: 200000, isIncome: false),
    Transaction(date: '2024-07-21', description: 'Rental Income', amount: 500000, isIncome: true),
    Transaction(date: '2024-07-22', description: 'Maintenance Cost', amount: 150000, isIncome: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembukuan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TransactionList(transactions: transactions),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add transaction screen or function
        },
        child: Icon(Icons.add),
        tooltip: 'Tambah Transaksi',
      ),
    );
  }
}

