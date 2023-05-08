import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Center(
         child:Image.asset(
             'assets/images/IMG_7947.jpg',

         ),
          ),
        ),
    );
  }
}
