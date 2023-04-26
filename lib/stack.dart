import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Center(
          child: Container(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width:250,
                  height: 250,
                  color: Colors.orange,
                ),
                Container(
                  width:125,
                  height: 125,
                  color: Colors.green,
                ),
                Positioned(
                  bottom: -25,
                  left: 16,
                  child: Container(
                    width:50,
                    height:50,
                    color: Colors.yellow,
                  ),
                ),
                Positioned(
                  top: -25,
                  right: 16,
                  child: Container(
                    width: 78,
                    height: 75,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          ),
        ),
      );
  }
}
