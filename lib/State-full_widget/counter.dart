import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: CounterExample());
  }
}

class CounterExample extends StatefulWidget {
  CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  var counter = 0;

  minuscounter() {
    setState(() {
      counter--;
      print(counter);
    });
  }

  pluscounter() {
    setState(() {
      counter++;
      print(counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                pluscounter();
              },
              child: Text('+'),
            ),
            Text('$counter'),
            ElevatedButton(
              onPressed: () {
                minuscounter();
              },
              child: Text(
                '-',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
