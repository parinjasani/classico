import 'package:classico/adi/screen/FOURTH.dart';
import 'package:flutter/material.dart';
import 'Notes-Details.dart';
class ThirdScreen extends StatefulWidget {


  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    List<Notes> NotesList1=[];
    void passdata(List<Notes> NotesList) {
     setState(() {
       NotesList1.addAll(NotesList);
     });
    }
    void insert(Notes N,BuildContext context){
      setState(() {
        NotesList1.add(N);
      });
    }
    //List<Notes> NotesList=ModalRoute.of(context)?.settings.arguments as List<Notes>;
    // void showtittle(int index)
    // {
    //   setState(() {
    //     NotesList[index].title;
    //   });
    // }
    // void showtnotes(int index)
    // {
    //   setState(() {
    //     NotesList[index].note;
    //   });
    // }
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: () async{
          List<Notes> Notelist =await Navigator.push(context, MaterialPageRoute(builder: (context) =>FourthScreen(),));
          print(Notelist);
          print(Notelist.length);
          //Notelist1.add(Notelist);
          // insert(N, context);
          // print(N.title);
          // print(N.note);
          // print(NotesList1);
          // print(NotesList1.length);
          //print(NotesList1)
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
      body:ListView.builder(itemCount: NotesList1.length,itemBuilder: (context, index) {
        return ListTile(
          title: Text(NotesList1[index].title),
          subtitle: Text(NotesList1[index].note),
        );
      },),

    );
  }
}

