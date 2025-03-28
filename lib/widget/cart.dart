import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/selected_item.dart';
import '../model/product.dart';

class CartWidget extends ConsumerWidget {

  CartWidget({ 
    Key? key,
    required this.height,
    required this.width,
    required this.selectedProducts, 
    required this.onPush,
    required this.edit,
    }) : super(key: key);

  final height;
  final width;
  final List<SelectedItems> selectedProducts;
  Function onPush;
  bool edit;

  List getCartList(){
    return selectedProducts;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      width: 450,
      height: 500,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: selectedProducts.length,
        itemBuilder: (context, index) {
          final product = selectedProducts[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0), // 間を開ける
            child: Container(
              width: 370,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 239, 210),
                borderRadius: BorderRadius.circular(20), // 角丸にする
              ),
              child: ListTile(
                title: Text('${product.objects[product.optionNumber].name} (${product.objects[product.optionNumber].options})',style:TextStyle(fontSize: 20)),
                subtitle: Text('個数: ${product.oderPieces}',style:TextStyle(fontSize: 18)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('${product.calculatSubtotal()}円', style:TextStyle(fontSize: 16)),
                    
                    
                    (edit)?SizedBox(
                      width: 70, // アイコンボタンの幅
                      height: 70, // アイコンボタンの高さ
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          // setState(() {
                          //   if (product.oderPieces > 1) {
                          //     product.decPieces(); // 個数を1減らす
                          //     widget.onPush();
                          //   }
                          // });
                        },
                        iconSize: width * 0.08,
                      ),
                    ):SizedBox(),
                    (edit)?SizedBox(
                      width: 70, // アイコンボタンの幅
                      height: 70, // アイコンボタンの高さ
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // setState(() {
                          //   product.addPieces(); // 個数を1増やす
                          //   widget.onPush();
                          // });
                        },
                        iconSize: width * 0.09, // アイコンの見た目のサイズ
                        padding: EdgeInsets.zero, // パディングをなくす
                      ),
                    ):SizedBox(),
                    (edit)?IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("確認"),
                              content: Text("この商品を本当に削除しますか？\n${product.objects[product.optionNumber].name}"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // キャンセルした場合の処理
                                    Navigator.of(context).pop(); // ダイアログを閉じる
                                  },
                                  child: Text("キャンセル"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // OKを押した場合の処理
                                    // setState(() {
                                    //     widget.selectedProducts.remove(product);
                                    //     widget.onPush();
                                    // });
                                    Navigator.of(context).pop(); // ダイアログを閉じる
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      iconSize: width * 0.08,
                    ):SizedBox(),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
