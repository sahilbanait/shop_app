import 'package:flutter/material.dart';
import 'package:shop_app/providers/products_provider.dart';
import 'package:shop_app/screens/homepage.dart';
import 'package:shop_app/screens/overview_screen.dart';
import 'package:shop_app/widgets/product_details.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'RobotoMono'),
        routes: {
          ProductDetail.rountName: (context) => ProductDetail(),
        },
        debugShowCheckedModeBanner: false,
        home: ProductOverviewScreen(),
      ),
    );
  }
}
