
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems=[
   // ['itemname','itemprice,'imagepath,'color']
    ['Guvava','4.00','assets/images/guava.jpg',Colors.green],
    ['banana','2.50','assets/images/banana.jpg',Colors.yellow],
    ['Grapes','12.00','assets/images/grapes.jpg',Colors.brown],
    ['Water','20.00','assets/images/water_bottle.jpg',Colors.blue],

  ];
  List _cartItems=[];
  get shopitems =>  _shopItems;
  get cartItems=> _cartItems;

  void addItemsToCart(int index)
  {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  void removeItemsToCart(int index)
  {
    _cartItems.remove(_cartItems[index]);
    notifyListeners();
  }

  String calculateTotal()
  {
    double totalprice=0;
    for(int i=0;i<_cartItems.length;i++)
      {
        totalprice+=double.parse(_cartItems[i][1]);
      }
    return totalprice.toStringAsFixed(2);
  }
}