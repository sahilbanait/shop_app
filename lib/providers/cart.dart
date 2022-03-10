import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';


class CartItem{
  final String id;
  final String tittle;
  final int quantity;
  final double price;

  CartItem({required this.id, required this.tittle, required this.quantity, required this.price});
}

class Cart with ChangeNotifier{

  late Map<String, CartItem> _items;

  Map<String, CartItem> get items {
     return    {..._items};
  }
  void addItem (String productId, double price, String tittle,){
    if(_items.containsKey(productId)){
      _items.update(productId, (existingCartItem) => CartItem(id: existingCartItem.id, tittle: existingCartItem.tittle, quantity: existingCartItem.quantity+1, price: existingCartItem.price));
    }else{
      _items.putIfAbsent(productId,() => CartItem (id: DateTime.now().toString(), tittle: tittle,  price: price, quantity: 1),);
    }
  }
}