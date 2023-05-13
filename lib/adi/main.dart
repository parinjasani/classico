
import 'package:classico/adi/screen/FOURTH.dart';
import 'package:classico/adi/screen/Notes-Details.dart';
import 'package:classico/adi/screen/THIRD.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ThirdScreen(),

    );
  }
}