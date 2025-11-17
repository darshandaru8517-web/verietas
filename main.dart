import 'package:flutter/material.dart';
import 'screens/welcom_screen.dart';

void main() {
  runApp(const VarietasApp());
}

class VarietasApp extends StatelessWidget {
  const VarietasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Varietas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}
