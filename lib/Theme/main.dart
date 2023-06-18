import 'package:classico/Theme/secondpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 23)),//for paddding in elevated button
          )
        ),
        splashColor: Colors.red,
        //


        //primarySwatch: Colors.brown//all background colors
       // brightness: Brightness.light,
       //  primaryColor: Colors.redAccent,
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 28,color: Colors.black)
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple).copyWith(onPrimary: Colors.black).copyWith(secondary: Colors.blue,onSecondary: Colors.black,onSecondaryContainer: Colors.red)
      ),

      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.icecream),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
        },
      ),
      appBar: AppBar(
        title: Text('Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Headline",style: Theme.of(context).textTheme.headlineMedium,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Enter String",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Buttton"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Theme dataprimary\nprimary\non primary\nsecondary\non secondary",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                decoration: TextDecoration.underline
              )
            )
          ],
        ),),
    );
  }
}
