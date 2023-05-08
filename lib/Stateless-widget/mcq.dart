import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  String? MCQ;
  void Getgender(String? value){
    setState(() {
      MCQ=value!;
    });
  }
   getmcq(){
    return Container(
      width: 400,
      height: 250,
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("hello how are you"),
              ],
            ),
            // Row(
            //   children: [
            //     Radio(
            //       value: "A",
            //       groupValue: MCQ,
            //       onChanged: (value) {
            //         Getgender(value);
            //       },
            //       // title: Text("A")),
            //     ),
            //     Radio(
            //       value: "A",
            //       groupValue: MCQ,
            //       onChanged: (value) {
            //         Getgender(value);
            //       },
            //       // title: Text("A")),
            //     ),
            //     Radio(
            //       value: "A",
            //       groupValue: MCQ,
            //       onChanged: (value) {
            //         Getgender(value);
            //       },
            //       // title: Text("A")),
            //     ),
            //     Radio(
            //       value: "A",
            //       groupValue: MCQ,
            //       onChanged: (value) {
            //         Getgender(value);
            //       },
            //       // title: Text("A")),
            //     ),
            //   ],
            // )
            RadioListTile(
                value: "A",
                groupValue: MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
                title: Text("A")),

            RadioListTile(
                value: "B",
                groupValue:MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
                title: Text("B")),
            RadioListTile(
                value: 'C',
                groupValue: MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
                title: Text("C")),
            RadioListTile(
                value: 'D',
                groupValue: MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
                title: Text("D")),

          ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ListView.builder(itemCount: 4,itemBuilder: (context, index) {
            return getmcq();
          },)
      ),
    );
  }
}
