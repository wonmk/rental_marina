import 'package:flutter/material.dart';
import 'package:rental_marina/presentation/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pembukuan',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(),
    );
  }
}



