import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Stremebuilderexample(),
    );
  }
}


class Stremebuilderexample extends StatefulWidget {
  const Stremebuilderexample({Key? key}) : super(key: key);

  @override
  State<Stremebuilderexample> createState() => _StremebuilderexampleState();
}

class _StremebuilderexampleState extends State<Stremebuilderexample> {




  Stream<int> fetchdata1()
  {
    return Stream.periodic(Duration(seconds: 1),(count) {
      return count;
    },);
  }

  Stream<String> fetchdata2 () {
   // await Future.delayed(Duration(seconds: 1));
   // DateTime date=DateTime.now();
   // yield "${date.hour}:${date.minute}: ${date.second}"; ---> not working

   return Stream.periodic(Duration(seconds: 1),(computationCount) {
      DateTime date=DateTime.now();
      return "${date.hour}:${date.minute}: ${date.second}";
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: fetchdata1(),
          builder: (context, snapshot) {
            if(snapshot.hasData)
              {
                return Text("${snapshot.data}");
              }
            else if(snapshot.hasError)
              {
                return Text("Error");
              }
            else
              {
                return CircularProgressIndicator();
              }
          },
        ),
      ),
    );
  }
}
