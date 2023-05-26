import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("InfoScreen"),
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.width,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
