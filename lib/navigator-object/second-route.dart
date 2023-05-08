
import 'package:classico/navigator-object/third-route.dart';
import 'package:classico/navigator-object/user.dart';
import 'package:flutter/material.dart';

class SecondRoutes extends StatelessWidget {
  User user;
  final _address=new TextEditingController();
  SecondRoutes(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Routes'
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _address,
                decoration: InputDecoration(
                    hintText: 'Enter the address'
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  '''${user.name}\n${user.email}\n${user.email}\n${user.age}
                '''
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                String address = _address.text.toString().trim();
                var user2=User(name: user.name, email: user.email, age: user.age,address: address);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                ThirdRoute(user2),));
              }, child: Text('Third route'))
            ],
          ),
        ),
      ),
    );
  }
}
