import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "home",style: TextStyle(
          fontSize: 23,
          fontWeight:FontWeight.bold
      ),
      ),
    );
  }
}
