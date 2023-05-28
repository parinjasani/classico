import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Fitted Box', home: FittedBoxExample());
  }
}

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          width: 200,
          height: 50,
          child: FittedBox(
            child: Text(
              'Hello World Hello World Hello World Hello World',
              style: TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis),
            ),
          ),
        ),
      ),
    );
  }
}
