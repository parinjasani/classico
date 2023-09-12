import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future builder',
      home:FuturebuilderPage(),
    );
  }
}
class FuturebuilderPage extends StatefulWidget {
  const FuturebuilderPage({Key? key}) : super(key: key);

  @override
  State<FuturebuilderPage> createState() => _FuturebuilderPageState();
}

class _FuturebuilderPageState extends State<FuturebuilderPage> {
  Future<String> fetchdata()
  {
   return Future.delayed(Duration(seconds: 5),() {
      return "hello future";
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future builder'),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchdata(),
          initialData: "Not updated",
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting)
              {
                return CircularProgressIndicator();
              }
            else if(snapshot.hasError)
              {
                return Text("Something went wrong");
              }
            else{
              return Text("${snapshot.data}");
            }
          },
        ),
      ),
    );
  }
}
