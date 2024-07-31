import 'package:flutter/material.dart';

class Car {
  final String name;
  final String licensePlate;
  final String transmission;

  Car({required this.name, required this.licensePlate, required this.transmission});
}

class CarList extends StatelessWidget {
  final List<Car> cars;

  const CarList({super.key, required this.cars});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (context, index) {
        final car = cars[index];
        return Card(
          child: ListTile(
            leading: const Icon(Icons.directions_car),
            title: Text(car.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('License Plate: ${car.licensePlate}'),
                Text('Transmission: ${car.transmission}'),
              ],
            ),
          ),
        );
      },
    );
  }
}

