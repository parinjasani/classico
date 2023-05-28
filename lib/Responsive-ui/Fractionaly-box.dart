import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fractionally Size Box',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: FractionallySizedBox(
          heightFactor: 0.5,
          widthFactor: 0.4,
          child: Container(
              width: 300,
              height: 300,
              color: Colors.green,
              child: FractionallySizedBox(
                heightFactor: 0.4,
                widthFactor: 0.5,
                child: Container(
                  color: Colors.red,
                ),
              )
          ),
        ),
      ),
    );
  }
}

