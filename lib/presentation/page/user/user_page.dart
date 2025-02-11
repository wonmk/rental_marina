import 'package:flutter/material.dart';
import 'package:rental_marina/presentation/page/user/add_user_page.dart';
import 'package:rental_marina/presentation/page/user/user_list.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});
  final List<User> users = [
    User(name: 'Andrew Tansil', email: 'tansilandrew29@gmail.com', phone: '081355689197'),
    User(name: 'Heri'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar User'),
      ),
      body: UserList(users: users),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddUserPage()),
          );
        },
        tooltip: 'Tambah Mobil',
        child: const Icon(Icons.add),
      ),
    );
  }
}