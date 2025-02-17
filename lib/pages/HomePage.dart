import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/ProductProvider.dart';
import 'package:flutter/src/rendering/box.dart';



class HomePage extends StatelessWidget {     // 変更箇所
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child:Text('k3posへようこそ',style: TextStyle(fontSize: 24)),)
      ),
      body: Center(
        child: Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('ボタン'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('ボタン'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('ボタン'),
                  ),
                ),
              ],
            )
        ),
      );     
  }
}