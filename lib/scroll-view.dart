import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scroll view in flutter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:[
                      Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.yellow,
                    ),
          Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.green),
          Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.blue,),

                  ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  height: 200,
                  color: Colors.brown,
                ),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  height: 200,
                  color: Colors.black,
                ),

              ],
            ),
          ),
        )
      ),
    );
  }
}
