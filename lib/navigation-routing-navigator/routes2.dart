import 'package:classico/navigation-routing-navigator/routes3.dart';
import 'package:flutter/material.dart';

class Routes2 extends StatelessWidget {

  String  name2;
  String email2;
  int age2;

  Routes2({required this.name2, required this.email2, required this.age2});
 final _address=new TextEditingController();
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
                ''' $name2\n $age2\n $email2
                '''
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                address: _address.text.toString().trim();
                String address=_address.text.toString().trim();
                Navigator.push(context, MaterialPageRoute(builder: (context) => Routes3(
                  address2:address ,
                ),));
              }, child: Text('Third route'))
            ],
          ),
        ),
      ),
    );
  }
}
