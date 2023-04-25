import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body:  Center(
          child: Container(
                alignment: Alignment.center,
               // padding: EdgeInsets.only(left: 10,top: 20),
                margin: EdgeInsets.only(left: 10,top: 10),
                width: 200,
                height: 200,
               // color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  //borderRadius: BorderRadius.circular(20),
                  // borderRadius: BorderRadius.vertical(
                  //   top: Radius.circular(20),
                  // )
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(20)
                  // )
                  boxShadow:
                    [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20,
                        spreadRadius: 10,
                        offset: Offset(2,3),

                      )
                    ],
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.red.shade300,
                      Colors.orange.shade300,
                      Colors.yellow.shade300,
                    ],
                       begin: Alignment.topLeft,
                       end: Alignment.bottomLeft,
                     // tileMode: TileMode.decal,
                  ),
                  border: Border.all(
                    color: Colors.yellow.shade50,
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignInside
                  ),
                ),
                //transform: Matrix4.rotationY(4),
                //constraints: BoxConstraints.expand(width: 200),
                child: Text('Parin jasani',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
        ),
      ),
    );
  }
}
