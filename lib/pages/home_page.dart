import 'package:flutter/material.dart';
import '../data/ProductProvider.dart';
import 'Pos/pos_page.dart';
import 'Oder/oder_page.dart';
import 'Stock/stock_manager_page.dart';
import 'ProductRegister/product_register_page.dart';
import 'package:flutter/src/rendering/box.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child:Text('k3posへようこそ',style: TextStyle(fontSize: 30)),)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height:10),
                Row(//レジへ画面遷移
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const PosPage()
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        child: const Text('レジ画面',style: TextStyle(fontSize: 24)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), 
                  ],
                ),
                const SizedBox(height:10),
                Row(//注文確認画面へ
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const OrderPage()
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        child: const Text('注文確認画面',style: TextStyle(fontSize: 24)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), 
                  ],
                ),
                const SizedBox(height:10),
                Row(//在庫確認編集画面へ
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const StockManagerPage()
                            ),
                          );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      child: const Text('在庫状況確認・編集',style: TextStyle(fontSize: 24)),
                    ),
                    ),
                  ),
                  const SizedBox(width: 20), 
                  ],
                ),
                const SizedBox(height:10),
                Row(//商品情報登録へ
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ProductRegisterPage()
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        child: const Text('商品情報登録',style: TextStyle(fontSize: 24)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), 
                  ],
                ),
              ],
            )
        ),
      );     
  }
}