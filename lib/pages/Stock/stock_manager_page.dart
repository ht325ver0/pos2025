import 'package:flutter/material.dart';

class StockManagerPage extends StatelessWidget {
  const StockManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('在庫情報管理', style: TextStyle(fontSize: 30))),
      ),
      body: Center(
      ),
    );
    }
  }