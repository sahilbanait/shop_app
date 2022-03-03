import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_details.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String tittle;
  final String imageUrl;

  ProductItem(this.id, this.tittle, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(ProductDetail.rountName, arguments: id,);
        },
       child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        title: Text(
          tittle,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
