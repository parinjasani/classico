import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets viewPadding= MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        title: Text('ViewPadding-Insets'),
      ),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.only(top: viewPadding.top),
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
