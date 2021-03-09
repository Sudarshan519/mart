import 'package:flutter/material.dart';
import 'package:martapp/home.dart';
import 'package:martapp/model/product.dart';
import 'package:martapp/pages/home.dart';
//import 'package:martapp/pages/home.dart';
import 'package:martapp/pages/product_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      //home: NavigationBar(),
      routes: {
        '/': (context) => BottomNav(),
        'home': (_) => Home(GlobalKey<ScaffoldState>()),
        'detail': (context) => ProductDetail(Product()),
      },
    );
  }
}
