import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/widgets/product_details.dart';

import '../providers/cart.dart';
import '../providers/product.dart';
import '../providers/products_provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart  = Provider.of<Cart>(context, listen: false);
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetail.rountName,
            arguments: product.id,
          );
        },
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        title: Text(
          product.tittle,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(
              product.isFavourate ? Icons.favorite : Icons.favorite_border),
          color: Theme.of(context).accentColor,
          onPressed: () {
            product.toggleFavoriteStatus();
          },
        ),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          color: Theme.of(context).accentColor,
          onPressed: () {cart.addItem(product.id, product.price, product.tittle);},
        ),
      ),
    );
  }
}
