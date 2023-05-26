import 'package:flutter/material.dart';

class WalkScreen extends StatelessWidget {
  const WalkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Walk",style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 34,
      ),
      ),
    );
  }
}
