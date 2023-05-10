
import 'package:flutter/material.dart';

class Routes3 extends StatefulWidget {
  String address2 ;

   Routes3({required this.address2});

  @override
  State<Routes3> createState() => _Routes3State(address2);
}

class _Routes3State extends State<Routes3> {
  String address2;

  _Routes3State(this.address2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third route'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('''$address2
              '''),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('second route'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
