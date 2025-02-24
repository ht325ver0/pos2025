import 'package:flutter/material.dart';

class ProductRegisterPage extends StatelessWidget {
  const ProductRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('商品情報登録', style: TextStyle(fontSize: 30))),
      ),
      body: Center(
      ),
    );
    }
  }