import 'package:flutter/material.dart';

import '../../navigator-object/user.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final nameController = new TextEditingController();
  final emailController = new TextEditingController();
  final ageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Enter Name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(hintText: 'Enter Age'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Enter email'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    String name = nameController.text.toString().trim();
                    String email = emailController.text.toString().trim();
                    int age = (ageController.text.toString().trim().isEmpty)
                        ? 0
                        : int.parse(ageController.text.toString().trim());
                    User user= User(name: name,age: age,email: email);
                    Navigator.pushNamed(context, '/second',arguments: user);
                  },
                  child: Text("Next Screen"))
            ],
          ),
        ),
      ),
    );
  }
}
