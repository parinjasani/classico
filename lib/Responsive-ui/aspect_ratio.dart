import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AspectRatioExample(),
    );
  }
}

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect ratio'),
      ),
      body: Center(
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
                color: Colors.green,
                child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/images/banana.jpg')), )
      ),
    );
  }
}

