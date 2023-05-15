import 'package:classico/adi/screen/FOURTH.dart';
import 'package:flutter/material.dart';
import 'Notes-Details.dart';

class ThirdScreen extends StatefulWidget {
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  var NotesList = <Notes>[];
  Widget build(BuildContext context) {

    print(NotesList);
    print(NotesList.length);
    void insert(Notes notes, BuildContext context) {
      setState(() {
        NotesList.add(notes);
      });
    }
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            Notes? N =await Navigator.push(context, MaterialPageRoute(builder: (context) =>FourthScreen(),));
            insert(N!, context);
            print(N?.note);
          },
          child: Icon(
            Icons.add,
            size: 35,
          ),
          backgroundColor: Colors.black,
          focusColor: Colors.red,
          elevation: 10,
        ),
        appBar: AppBar(title: Text("THIRD")),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: NotesList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(NotesList[index].title),
                  subtitle: Text(NotesList[index].note),
                );
              },
            ),
          ),
          // ElevatedButton(
          //   onPressed: () async{
          //     Notes? N =await Navigator.push(context, MaterialPageRoute(builder: (context) =>FourthScreen(),));
          //      insert(N!, context);
          //     // print(N?.note);
          //     //NotesList=<Notes>[Notes(title:N.title,note:N.title)];
          //   },
          //   child: Icon(
          //     Icons.add,
          //     size: 35,
          //   ),
          // ),
        ]));
  }
}
