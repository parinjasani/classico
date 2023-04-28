import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
   Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view deflut'),
      ),
      body: ListView(

        children: [

          Container(
            height: 100,
            color: Colors.orange.shade800,
          ),
          Container(
            height: 100,
            color: Colors.orange.shade700,
          ),
          Container(
            height: 100,
            color: Colors.orange.shade600,
          ),
          Container(
            height: 100,
            color: Colors.orange.shade500,
          ),
          Container(
            height: 100,
            color: Colors.orange.shade400,
          ),
          Container(
            height: 100,
            color: Colors.orange.shade300,
          ),
          Container(
            height: 100,
            color: Colors.orange.shade200,
          ),
          Container(
            height: 100,
            color: Colors.orange.shade100,
          ),
        ],
      ),
    );
  }
}
