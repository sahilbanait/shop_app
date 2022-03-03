import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String tittle;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavourate;

  Product(
      {
        required this.id,
      required this.tittle,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.isFavourate=false
      }
      );
}
