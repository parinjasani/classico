import 'package:classico/network/get_req_jsonarray/screen/albumlist.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Albumlist(),
    );
  }
}
