import 'package:flutter/material.dart';
import 'package:rental_marina/presentation/page/mobil/car_list.dart';
import 'package:rental_marina/presentation/page/mobil/add_car_page.dart';

class MobilPage extends StatelessWidget {
  MobilPage({super.key});
  final List<Car> cars = [
    Car(name: 'Toyota Avanza', licensePlate: 'DB 1234 AB', transmission: 'Automatic'),
    Car(name: 'Honda Brio', licensePlate: 'DB 5678 CD', transmission: 'Manual'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mobil'),
      ),
      body: CarList(cars: cars),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddCarPage()),
          );
        },
        tooltip: 'Tambah Mobil',
        child: const Icon(Icons.add),
      ),
    );
  }
}
