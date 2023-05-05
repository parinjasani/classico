import 'package:classico/navigation-routing-navigator/routes2.dart';
import 'package:flutter/material.dart';

class Routes1 extends StatelessWidget {
  Routes1({Key? key}) : super(key: key);
  final _name = new TextEditingController();
  final _age = new TextEditingController();
  final _email = new TextEditingController();

  //final _address=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('routes'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _name,
                decoration: InputDecoration(hintText: 'Enter the  name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _age,
                decoration: InputDecoration(hintText: 'Enter the  age'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(hintText: 'Enter the  email'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    String name = _name.text.toString().trim();
                    String email = _email.text.toString().trim();
                    int age = (_age.text.isEmpty)
                        ? 0
                        : int.parse(_age.text.toString().trim());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Routes2(
                            name2: name,
                            age2: age,
                            email2: email,
                          ),
                        ));
                  },
                  child: Text('second Route'))
            ],
          ),
        ),
      ),
    );
  }
}
