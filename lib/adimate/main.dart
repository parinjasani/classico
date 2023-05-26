import 'package:classico/adimate/userscreen/home-page-homepage.dart';
import 'package:classico/adimate/widget/infopage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: InfoScreen(),
    );
  }
}
