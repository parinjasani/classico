import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LayoutBuilder',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Text('''
                      constraint height : ${constraints.maxHeight}
                      constraint width : ${constraints.maxWidth}
                      '''),
                    );
                  },
                )),
            Expanded(
                flex: 2,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.red,
                      child: Text('''
                      constraint height : ${constraints.maxHeight}
                      constraint width : ${constraints.minWidth}
                      '''),
                    );
                  },
                )),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
