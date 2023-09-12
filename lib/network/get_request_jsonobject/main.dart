import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'model/User.dart';
import 'model/Useresponse.dart';

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
  bool isLoading = false;

  void updateloading(bool status) {
    setState(() {
      isLoading = status;
    });
  }

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
      body: isLoading ? Center(child: CircularProgressIndicator()) : ListView.builder(
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
      ),
    );
  }

  Future<void> fetchuserlist() async {
    updateloading(true);
    Response response = await get(Uri.parse("https://reqres.in/api/users"));
    if (response.statusCode == 200) {
      //sucess
      Useresponse res = Useresponse.fromJson(jsonDecode(response.body));
      print(res);
      setState(() {
        updateloading(false);
        userlist = res.userlist ?? [];
      });
      // print("Respone : ${response.body}");
    } else {
      updateloading(false);
      //error failed
    }
  }
}
