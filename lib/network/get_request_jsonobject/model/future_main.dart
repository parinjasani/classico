import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'User.dart';
import 'Useresponse.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Userlist(),
    );
  }
}

class Userlist extends StatefulWidget {
  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {


  List<User> userlist = [];

  @override
  void initState() {
    // TODO: implement initState
    fetchuserlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user list'),
      ),
      body:FutureBuilder(
        future: fetchuserlist(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return  ListView.builder(
              itemCount: userlist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade400,
                    backgroundImage: NetworkImage("${userlist[index].avatar}"),
                  ),
                  title: Text(
                      "${userlist[index].firstName} ${userlist[index].lastName}"),
                  subtitle: Text("${userlist[index].email}"),
                );
              },
            );
          }
          else if(snapshot.hasError)
            {
              return Center(child: Text("something went wrong"));
            }
          else{
            return Center(child: CircularProgressIndicator());
          }
        },
      )
    );
  }

  Future<List<User>> fetchuserlist() async {

    Response response = await get(Uri.parse("https://reqres.in/api/users"));
    if (response.statusCode == 200) {
      //sucess
      Useresponse res = Useresponse.fromJson(jsonDecode(response.body));

        userlist = res.userlist ?? [];

        return userlist;
      // print("Respone : ${response.body}");
    } else {
     throw Exception("error in fecthing data");
      //error failed
      return [];
    }
  }
}

//sdfsd