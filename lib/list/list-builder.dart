import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:MyHomepage(),
    );
  }
}
class MyHomepage extends StatelessWidget {
   MyHomepage({Key? key}) : super(key: key);
   var colorList = [
     Color(0XFFC0CA33),
     Colors.amber.shade900,
     Colors.amber.shade800,
     Colors.amber.shade700,
     Colors.amber.shade600,
     Colors.amber.shade500,
     Colors.amber.shade400,
     Colors.amber.shade300,
     Colors.amber.shade200,
     Colors.amber.shade100,
   ];
   var titleList = [
     'Entry-A',
     'Entry-B',
     'Entry-C',
     'Entry-D',
     'Entry-E',
     'Entry-F',
     'Entry-G',
     'Entry-H',
     'Entry-I',
     'Entry-J',
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List builder'),
      ),
      body:ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context,index)
        {
          return Container(
            height: 80,
            color: colorList[index],
            child: Center(child: Text(titleList[index])),
          );
        },
      ),

    );
  }
}
