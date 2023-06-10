import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    var viewpadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ExpansionTile(
              title: ListTile(
                leading: Icon(Icons.home),
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                title: Text("Home"),
              ),
            ),
            ExpansionTile(
              title: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Icon(Icons.home),
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text("Profile"),
                ),
              ),
            ),
            ExpansionTile(
              children: [
                Container(height:20,child: Text("Upadate Name")),
                Text("Update Profile")
              ],
              title: ListTile(
                leading: Icon(Icons.home),
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                title: Text("Setting  "),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
