import 'package:flutter/material.dart';
import 'package:inventory_app/screens/stockDetail.dart';
import 'file:///C:/Users/ialok/AndroidStudioProjects/inventory_app/lib/screens/adminPanel.dart';
import './screens/stockEntry.dart';
import './screens/mainScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StockDetail(),
      routes: {
        'MainScreen': (context) => MainScreen(),
        'StockDetails': (context) => StockEntry()
      },
    );
  }
}
