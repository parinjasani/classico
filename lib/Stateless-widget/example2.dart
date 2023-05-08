import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example'),
        ),
        body: Center(
          child: Stack(

            children: [
              CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                  child: Icon(
                    Icons.mail_lock_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),

            ],
          ),
        )
        ),
    );
  }
}
