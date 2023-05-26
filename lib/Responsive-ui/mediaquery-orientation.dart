import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Material App',
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation'),
      ),
      body: orientation==Orientation.portrait? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.width*0.5 ,
              width: size.width*0.5,
              color: Colors.red,
            ),
            Container(
              height: size.width*0.5 ,
              width: size.width*0.5,
              color: Colors.green,
            )
          ],
        ),
      ) : Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.width*0.5 ,
              width: size.width*0.5,
              color: Colors.red,
            ),
            Container(
              height: size.width*0.5 ,
              width: size.width*0.5,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
