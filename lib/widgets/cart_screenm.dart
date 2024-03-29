import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Text('Total', style: TextStyle(fontSize: 20),),
                  SizedBox(width: 10,),
                  Chip(
                    label: Text(''),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
