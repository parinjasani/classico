import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'colunm',
      home: Scaffold(
        appBar: AppBar(
          title: Text('column widget'),
        ),
        body: Center(
          child: Container(
            width: 300,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
             // verticalDirection: VerticalDirection.down,
              children: [
                Container(
                  width:200,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width:200,
                  height: 50,
                  color: Colors.orange,
                ),
                Container(
                  width:200,
                  height: 50,
                  color: Colors.yellow,
                ),
                getcontainer(Colors.green),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget getcontainer(Color colour)
{
  return Container(
    width: 200,
    height: 50,
    color: colour,
  );
}
