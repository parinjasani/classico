
import 'package:classico/navigation-routing-navigator/navigator-object/user.dart';
import 'package:flutter/material.dart';

class ThirdRoute extends StatefulWidget {
   User user;

   ThirdRoute(this.user);

  @override
  State<ThirdRoute> createState() => _ThirdRouteState(user);
}

class _ThirdRouteState extends State<ThirdRoute> {
  User user;
  _ThirdRouteState(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third route'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('''${user.address}
              '''),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('second route'),
              )
            ],
          ),
        ),
      ),
    );
  }
}


