import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'tittle',
        tittle: 'red shirt',
        description: 'A red shirt',
        price: 22.3,
        imageUrl:
            'https://cdn.pixabay.com/photo/2022/02/25/08/13/blood-oranges-7033738_960_720.jpg'),
    Product(
        id: 'p1',
        tittle: 'red shirt',
        description: 'A red shirt',
        price: 22.3,
        imageUrl:
            'https://cdn.pixabay.com/photo/2022/02/25/08/13/blood-oranges-7033738_960_720.jpg'),
    Product(
        id: 'p1',
        tittle: 'red shirt',
        description: 'A red shirt',
        price: 22.3,
        imageUrl:
            'https://cdn.pixabay.com/photo/2022/02/25/08/13/blood-oranges-7033738_960_720.jpg'),
  ];

  List<Product> get items => [..._items];

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProducts() {
    // _items.add(value);
    notifyListeners();
  }
}
