import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('text widget'),
        ),
        body: Center(
          child: Text('HelloWorld',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.italic,
            fontSize: 20,
              //color: Colors.purple,
            decoration: TextDecoration.combine(
              [
                TextDecoration.underline,
                TextDecoration.overline,
              ]
            ),
            backgroundColor: Colors.white,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: Colors.cyan,
            decorationThickness:2,
            foreground: Paint()
              ..color=Colors.red
              ..style=PaintingStyle.stroke
              ..strokeWidth=2,
            shadows:[ Shadow(
              color: Colors.black38,
              blurRadius: 3,
              offset:Offset(2,3),

            )],
          ),
            textAlign: TextAlign.center,
            maxLines: 1,

          ),
        ),
      ),
    );
  }
}
