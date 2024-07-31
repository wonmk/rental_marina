import 'package:flutter/material.dart';

class AddCarPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController licensePlateController = TextEditingController();
  final TextEditingController transmissionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Mobil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama Mobil'),
            ),
            TextField(
              controller: licensePlateController,
              decoration: InputDecoration(labelText: 'Plat Nomor'),
            ),
            TextField(
              controller: transmissionController,
              decoration: InputDecoration(labelText: 'Transmisi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to save the new car data
                String name = nameController.text;
                String licensePlate = licensePlateController.text;
                String transmission = transmissionController.text;

                print('Nama: $name, Plat Nomor: $licensePlate, Transmisi: $transmission');

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