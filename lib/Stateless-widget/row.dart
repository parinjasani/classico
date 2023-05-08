import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row widget'),
        ),
        body: Center(
          child: Container(
            height: 300,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             // crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                getcontainer(Colors.red),
                getcontainer(Colors.orange),
                getcontainer(Colors.yellow),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 Widget getcontainer(Color color)
 {
   return Container(
     width: 50,
     height: 200,
     color:color,
   );
 }