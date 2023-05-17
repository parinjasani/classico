import 'package:classico/Material-ui/navigationbar/Model/Model.dart';
import 'package:classico/Material-ui/navigationbar/screen/first_screen.dart';
import 'package:classico/Material-ui/navigationbar/screen/fourth_screen.dart';
import 'package:classico/Material-ui/navigationbar/screen/second_screen.dart';
import 'package:classico/Material-ui/navigationbar/screen/third_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  var selectedindex=0;
  var itemsList=<ModelItems>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemsList.add(ModelItems(appbarString: "Home", color:Colors.amber, widget: FirstScreen()));
    itemsList.add(ModelItems(appbarString: "Search", color:Colors.blue, widget: SecondScreen()));
    itemsList.add(ModelItems(appbarString: "Setttings", color:Colors.black, widget: ThirdScreen()));
    itemsList.add(ModelItems(appbarString: "Profile", color:Colors.green, widget: FourthScreen()));
  }
  var widgetList=<Widget>[
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen()
  ];
  Widget build(BuildContext context) {
    //print(itemsList[0].appbarString);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
          onTap: (value) {
            setState(() {
              selectedindex=value;
            });
          },items: [
        BottomNavigationBarItem(
            backgroundColor:itemsList[0].color,
          icon: Icon(Icons.home),
          label: "Home"
        ),
        BottomNavigationBarItem(
          backgroundColor:itemsList[1].color,
            icon: Icon(Icons.search_rounded),
            label: "search"
        ),
        BottomNavigationBarItem(
            backgroundColor:itemsList[2].color,
            icon: Icon(Icons.settings),
            label: "setting"
        ),
        BottomNavigationBarItem(
            backgroundColor: itemsList[3].color,
            icon: Icon(Icons.account_circle_rounded),
            label: "Profile"
        ),
      ]),
      appBar: AppBar(
        title: Text(itemsList[selectedindex].appbarString),
        backgroundColor: itemsList[selectedindex].color,
      ),
      body: widgetList[selectedindex],
    );
  }
}
