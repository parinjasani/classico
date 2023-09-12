import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomepage(),
    );
  }
}
class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {

  final _namecontroller=TextEditingController();

  final _agecontroller=TextEditingController();

  final _salarycontroller=TextEditingController();
  var result="";
   saverecord(String name, int age, int salary) async {
   try{
     final SharedPreferences pref= await SharedPreferences.getInstance();
     await pref.setInt("Salary", salary);
     await pref.setString("Name",name);
     await pref.setInt("Age", 20);
     print("Data saved sucessfully");
   }
   catch(e)
     {
       print(e.toString());
     }
  }
   readrecord() async {
     try{
       final SharedPreferences pref= await SharedPreferences.getInstance();
       String name=pref.getString("Name") ?? "";
       int salary=pref.getInt("Salary") ?? 0;
       int age=pref.getInt("Age") ?? 0;
       setState(() {
         result = '''
         name:-$name
         salary:-$salary
         age:-$age
         ''';
       });
     }
     catch(e)
     {
       print(e.toString());
     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Shared Preferance'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _namecontroller,
                decoration:
                InputDecoration(hintText: "enter the empolyee name"),
              ),
              TextField(
                controller: _agecontroller,
                decoration:
                InputDecoration(hintText: "enter the empolyee age"),
              ),
              TextField(
                controller: _salarycontroller,
                decoration:
                InputDecoration(hintText: "enter the empolyee salary"),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child:
                    ElevatedButton(onPressed: () {
                      String name=_namecontroller.text.toString().trim();
                      int age=int.parse(_agecontroller.text.toString().trim());
                      int salary=int.parse(_salarycontroller.text.toString().trim());
                      saverecord(name,age,salary);
                    }, child: Text("SAVE")),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child:
                    ElevatedButton(onPressed: () {
                      readrecord();
                    }, child: Text("Read")),
                  )
                ],
              ),
              Text(
                result,
                style: TextStyle(
                  fontSize: 24,
                ),
              )
            ],
          ),
        ));
  }



}

