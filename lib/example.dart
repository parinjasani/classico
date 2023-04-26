import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('example colunm in row'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getcolunm(),
              getcolunm(),
              getcolunm(),
            ],
          )
        ),
      ),
    );
  }
}
Widget getcolunm()
{
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
      Container(
        color:Colors.yellow,
          child: Text('hello',style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          )
      ),
    ],
  );
}
