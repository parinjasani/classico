import 'package:classico/navigation-routing-navigator/ongenerate/routes/approute.dart';
import 'package:classico/navigation-routing-navigator/ongenerate/screen/first-screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FirstScreen(),
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
