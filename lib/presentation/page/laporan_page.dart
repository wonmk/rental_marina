import 'package:flutter/material.dart';

class PembukuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pembukuan')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Tambah Transaksi'),
            onTap: () {
              // Tambahkan logika untuk menambah transaksi
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Daftar Transaksi'),
            onTap: () {
              // Tambahkan logika untuk melihat daftar transaksi
            },
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Laporan Keuangan'),
            onTap: () {
              // Tambahkan logika untuk melihat laporan keuangan
            },
          ),

        ],
      ),
    );
  }
}