import 'package:flutter/material.dart';

class Transaction {
  final String date;
  final String description;
  final double amount;
  final bool isIncome;

  Transaction({required this.date, required this.description, required this.amount, required this.isIncome});
}

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Card(
          child: ListTile(
            title: Text(transaction.description),
            subtitle: Text(transaction.date),
            trailing: Text(
              'Rp ${transaction.amount.toStringAsFixed(2)}',
              style: TextStyle(
                color: transaction.isIncome ? Colors.green : Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}
