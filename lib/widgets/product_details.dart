import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';


class ProductDetail extends StatelessWidget {
  // final String tittle;
  // final double price;
  // ProductDetail(this.tittle, this.price);
  static const rountName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute
        .of(context)
        ?.settings
        .arguments as String;
    final loadedProduct = Provider.of<Products>(context, listen: false)
        .findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.tittle),

      ),
    );
  }
}
