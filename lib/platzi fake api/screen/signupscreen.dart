import 'dart:convert';

import 'package:classico/platzi%20fake%20api/model/user.dart';
import 'package:classico/platzi%20fake%20api/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final  namecontroler=TextEditingController();
  final  emailcontroler=TextEditingController();

  final  passcontroler=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('signup screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: namecontroler,
              decoration: InputDecoration(labelText: "enter the name"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailcontroler,
              decoration: InputDecoration(labelText: "enter the email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passcontroler,
              decoration: InputDecoration(labelText: "enter password"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {

              String name=namecontroler.text.toString().trim();
              String email=emailcontroler.text.toString().trim();
              String password=passcontroler.text.toString().trim();
              String avatar="https://fakeimg.pl/200x200/";
              User user = User(name: name,email: email,pass: password,avatar: avatar);


              crateaccount(user,context);
              

            }, child: Text("signin")),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> crateaccount(User user,BuildContext context) async {


    var reqheader=<String,String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

      Response response=await post(Uri.parse("https://api.escuelajs.co/api/v1/users/") ,headers: reqheader,body: jsonEncode(user.toMap()));

      if(response.statusCode==201)
        {

          print("hello ${user.name} account created");

          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));



        }

      else{

        print("account cant created");

      }

  }
}
