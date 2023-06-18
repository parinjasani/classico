import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        //primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan,).copyWith(onPrimary: Colors.white).copyWith(secondary: Colors.redAccent)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("second page"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {

            },
            child: Text("second page"),
          ),
        ),
      ),
    );
  }
}
