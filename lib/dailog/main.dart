import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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

class Dailog extends StatefulWidget {
  @override
  State<Dailog> createState() => _DailogState();
}

class _DailogState extends State<Dailog> {
var dob="";
final _dobcontroller= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 1:
                  break;
                case 2:
                  showAlertDailogbox(context);
                  break;
                case 3:
                  break;
                default :
                  print("invalid");
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: 1, child: Text("setting")),
                PopupMenuItem(value: 2, child: Text("logout")),
                PopupMenuItem(value: 3, child: Text("Profile")),
              ];
            },
          )
        ],
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
            ElevatedButton(
                onPressed: () async {
                  var str2 = await showSimpleDailog(context);
                },
                child: Text("Simple Dailog")),
            ElevatedButton(
                onPressed: () {
                  showCustomDailog(context);
                },
                child: Text("custom Dailog")),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                controller: _dobcontroller,
                decoration: InputDecoration(
                    labelText: "date of birth"
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  datepick(context);
                },
              ),
            ),
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
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("select the language"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, "java");
              },
              child: Text("Java"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, "Dart");
              },
              child: Text("Dart"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, "c++");
              },
              child: Text("c++"),
            ),
          ],
        );
      },
    );
  }

  void showCustomDailog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Rate us",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                RatingBar.builder(
                  initialRating: 2,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  allowHalfRating: true,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.star,
                      color: Colors.lightBlue,
                    );
                  },
                  onRatingUpdate: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Enter the msg"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("cancle")),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("submit"))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

   datepick(BuildContext context) async {
    var dateTime=await showDatePicker(context: context,
        cancelText: "bas",
        confirmText: "done",
       fieldLabelText: "date of birth",// nana box ma uper dekhase
       helpText: "select date of birth",//main box ma uper dekhase
        //initialEntryMode: DatePickerEntryMode.inputOnly,//khali nanu box jova mate
        fieldHintText: "dd/mm/yyyy",
        errorFormatText: "invalid",//nana box ma error hoy to batave
        errorInvalidText: "hello32",
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2024));
if(dateTime!=null)
  {
    dob = "${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')} /${dateTime.year.toString().padLeft(2, '0')}";
    _dobcontroller.text=dob;
  }
else{
  print("enter the date");
}
  }
}
