import 'package:flutter/material.dart';

import '../../navigator-object/user.dart';

class SecondScreen extends StatelessWidget {
 User ? user;

 SecondScreen(this.user);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: Text(
                '''${user!.name}
           '''
            )
        ),
      ),
    );
  }
}
