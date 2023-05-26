import 'package:flutter/material.dart';

class TrainScreen extends StatelessWidget {
  const TrainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "train",style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 34,
      ),
      ),
    );
  }
}
