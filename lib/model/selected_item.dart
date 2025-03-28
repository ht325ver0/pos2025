import 'product.dart';

class SelectedItems{
  ///商品(Product)
  List<Product> objects;
  ///オプションの番号
  int optionNumber;
  ///注文数(int)
  int oderPieces;
  ///商品の価格(int)
  String? memo;

  SelectedItems({
    required this.objects,
    required this.optionNumber,
    required this.oderPieces,
    this.memo,
  });

  ///小計計算
  int calculatSubtotal(){
    int subtotal = 0;
    for(int i = 0; i < objects.length; i++){
      subtotal += objects[i].price;
    }
    return subtotal;
  }

  void addPieces(){
    this.oderPieces += 1;
  }

  void decPieces(){
    this.oderPieces -= 1;
  }

    // String getOptionString(){
    //   return objects.option[optionNumber];
    // }
    
  

}
