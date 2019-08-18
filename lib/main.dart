import 'package:ecommerce_app/pages/explore.dart';
import 'package:ecommerce_app/pages/search_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Josefin',
      ),
      home: SearchPage(),
    );
  }
}
