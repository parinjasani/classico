import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: RadiobuuttonExample());
  }
}

class RadiobuuttonExample extends StatefulWidget {
  RadiobuuttonExample({Key? key}) : super(key: key);

  @override
  State<RadiobuuttonExample> createState() => _RadiobuuttonExampleState();
}

class _RadiobuuttonExampleState extends State<RadiobuuttonExample> {
  var gender = 'male';

  void updateselction(String? value) {
    setState(() {
      gender = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                value: 'male',
                groupValue: gender,
                onChanged: (value) {
                  updateselction(value);
                },
                title: Text('Male'),
              ),
              RadioListTile(
                value: 'female',
                groupValue: gender,
                onChanged: (value) {
                  updateselction(value);
                },
                title: Text('Female'),
              ),
              RadioListTile(
                value: 'Other',
                groupValue: gender,
                onChanged: (value) {
                  updateselction(value);
                },
                title: Text('Other'),
              ),
            ],
          ),
        ));
  }
}
