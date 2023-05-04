import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home : CheckExaple()
    );
  }
}
class CheckExaple extends StatefulWidget {
 CheckExaple({Key? key}) : super(key: key);

  @override
  State<CheckExaple> createState() => _CheckExapleState();
}

class _CheckExapleState extends State<CheckExaple> {
  @override
  var isChecked= false;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: CheckboxListTile(
              value: isChecked,
              onChanged: (val) {
                print(val);
                setState(() {
                  isChecked=val!;
                }
                );
              },
            title: Text('I agree .......'),
          ),
        ),
      ),
    );
  }
}
