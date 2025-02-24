import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PosPage extends ConsumerWidget {
  const PosPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('レジ', style: TextStyle(fontSize: 30))),
      ),
      body: Container(
        color: const Color.fromARGB(255, 237, 233, 230),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(//一番左列
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(//合計金額
                  color: Colors.white,
                  child: Row(
                    children: [
                      const Text('合計金額:',style: TextStyle(fontSize: 20),),
                      //Text('totalPrice',style: TextStyle(fontSize: 20),),
                      const Text('円', style: TextStyle(fontSize: 20)),
                    ]
                  ),
                ),
                //Cart()
              ]
            ),
            //VerticalButtonList()//部位選択(選ばれた値が返ってくる),
            //VerticalButtonList()//味選択(選ばれた値が返ってくる),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Quantity()//数量選択(選ばれた値が返ってくる),
                //AddButton()//追加ボタン(選んだ商品をカートに追加),
              ],
            ),
          ],
        ),
      ),
    );
    }
  }