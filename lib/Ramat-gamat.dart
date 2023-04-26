import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ramat Gamaat'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/IMG_7947.jpeg',
                height: 600,
                width:300,
              ),
              // SizedBox(
              //   height: 2,
              // ),
             CircleAvatar(
               backgroundImage: NetworkImage(
                 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
               ),
               ),
            ],
          ),
        )
      ),
    );
  }
}
