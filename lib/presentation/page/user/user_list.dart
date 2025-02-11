import 'package:flutter/material.dart';

class User {
  final String name;
  final String? phone;
  final String? email;

  User({required this.name, this.phone, this.email});
}

class UserList extends StatelessWidget {
  final List<User> users;

  const UserList({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Card(
          child: ListTile(
            leading: const Icon(Icons.person),
            title: Text(user.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Phone number: ${user.phone}'),
                Text('email: ${user.email}'),
              ],
            ),
          ),
        );
      },
    );
  }
}

