import 'package:flutter/material.dart';

class TramScreen extends StatelessWidget {
  const TramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "tram",style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 34,
      ),
      ),
    );
  }
}
