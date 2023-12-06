
import 'dart:convert';

import 'package:classico/platzi%20fake%20api/model/session.dart';
import 'package:classico/platzi%20fake%20api/screen/homescreen.dart';
import 'package:classico/platzi%20fake%20api/screen/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../model/user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final  emailcontroler=TextEditingController();
  final  passcontroler=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: emailcontroler,
              decoration: InputDecoration(
                  labelText: "enter the email"
              ),
            ),

            SizedBox(height: 10,),
            TextField(
              controller: passcontroler,
              decoration: InputDecoration(
                  labelText: "enter password"
              ),
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {

              String pass=passcontroler.text.toString().trim();
              String email=emailcontroler.text.toString().trim();

              User user = User(email: email,pass: pass);

              login(user,context);

            }, child: Text("Login")),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()),);

            }, child: Text("signup"))
          ],
        ),
      ),
    );
  }

  Future<void> login(User user, BuildContext context) async {


    var reqheader=<String,String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    Response response=await post(Uri.parse("https://api.escuelajs.co/api/v1/auth/login") ,headers: reqheader,body: jsonEncode(user.toMap()));

    if(response.statusCode==201)
    {



      Session session=Session.fromJson(jsonDecode(response.body));
      
      if(session!=null)
        {
          
          print("access  token${session.accessToken}");
          
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
          
        }


    }

    else{

      print("account cant created");

    }

  }


}
