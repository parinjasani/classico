import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Dailog(),
    );
  }
}

class Dailog extends StatelessWidget {
  const Dailog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dailog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var result = await showAlertDailogbox(context);
                },
                child: Text("Alert dailog")),
            ElevatedButton(onPressed: () async {
              var str2 = await showSimpleDailog(context);
            }, child: Text("Simple Dailog")),
            ElevatedButton(onPressed: ()  {
             showCustomDailog(context);
            }, child: Text("custom Dailog")),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showAlertDailogbox(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Logout"),
            content: Text("are you sure to want to logout from this app"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, "cancle");
                  },
                  child: Text("Logout")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, "cancle");
                  },
                  child: Text("Cancel")),
            ],
          );
        });
  }

  Future<dynamic> showSimpleDailog(BuildContext context) {
     return showDialog(context: context, builder:(context) {
       return SimpleDialog(
         title: Text("select the language"),
         children: [
           SimpleDialogOption(
             onPressed: () {
               Navigator.pop(context,"java");
             },child: Text("Java"),
           ),
           SimpleDialogOption(
             onPressed: () {
               Navigator.pop(context,"Dart");
             },child: Text("Dart"),
           ),
           SimpleDialogOption(
             onPressed: () {
               Navigator.pop(context,"c++");
             },child: Text("c++"),
           ),
         ],
       );
     }, );

  }

  void showCustomDailog(BuildContext context) {
    showDialog(context: context, builder:(context) {
      return Dialog(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: () {
              showAlertDailogbox(context);
            }, child:Text("Log out"))
          ],
        ),
      );
    }, );
  }
}
