import 'package:flutter/material.dart';

class AddUserPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama User'),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Nomor HP'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to save the new car data
                String name = nameController.text;
                String phone = phoneController.text;
                String email = emailController.text;

                print('Nama: $name, Nomor HP: $phone, E-mail: $email');

                Navigator.pop(context); // Go back to the previous screen
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}