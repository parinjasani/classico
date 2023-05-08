import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return myPage();
    // MaterialApp(
    //     title: 'parin',
    //     home:(
    //         Scaffold(
    //           appBar: AppBar(
    //             title: Text('first app'),
    //           ),
    //           body: (
    //               Center(
    //                 child: Text("hello world"),
    //               )
    //           ),
    //         )
    //     )
    // )
  }
}
class myPage extends StatelessWidget {
  //const myPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      debugShowCheckedModeBanner: false,
      home: (
      Scaffold(
        appBar: AppBar(
          title: Text("container"),
        ),
        body: (
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(child: Text("hello container",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.purple[400],
            )
              ,)
            ),
          ),
        )
        ),
      )
      ),
    );
  }
}
