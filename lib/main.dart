import 'package:flutter/material.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(const RegisterApp());
}

class RegisterApp extends StatelessWidget {
  const RegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'register app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 146, 183)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

