import 'package:classico/navigation-routing-navigator/named/Screen/firstscreen.dart';
import 'package:classico/navigation-routing-navigator/named/Screen/second-screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: FirstScreen(),
      initialRoute: '/',
      routes: {
        '/' : (context) => FirstScreen(),
        '/second':(context) => SecondScreen()
      },
    );
  }
}

