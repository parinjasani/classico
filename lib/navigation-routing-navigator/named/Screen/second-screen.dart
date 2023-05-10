import 'package:flutter/material.dart';

import '../../navigator-object/user.dart';


class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    User user=ModalRoute.of(context)?.settings.arguments as User;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
         child: Text(
           '''${user.name}
           '''
         )
        ),
      ),
    );
  }
}
