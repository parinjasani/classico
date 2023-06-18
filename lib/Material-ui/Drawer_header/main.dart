import 'package:classico/Material-ui/Drawer_header/screen/home.dart';
import 'package:classico/Material-ui/Drawer_header/screen/myBucket.dart';
import 'package:classico/Material-ui/Drawer_header/screen/order.dart';
import 'package:classico/Material-ui/Drawer_header/screen/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectindex=0;
  var BodyList=<  Widget>[Home(),Profile(),MyBucket(),Order()];
  void menuClicked(int i) {
    setState(() {
      selectindex=i;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Navigation Drawer-header'),
      ),
      // body: Center(
      //   child: Container(
      //     child: Text('Hello World'),
      //   ),
      // ),
      body: BodyList[selectindex],
      drawer: Drawer(
        child: Column(
          children: [
            getHeader(),
            getDrawerItems(),
          ],
        ),
      ),
    );
  }

  getHeader() {
    return Container(
      color: Colors.purple,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage("assets/images/user.png"),
            backgroundColor: Colors.purpleAccent,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Parin",
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email_outlined,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "parinjasani0@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  getDrawerItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            selected: selectindex==0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onTap: () {
              menuClicked(0);
              Home();
              Navigator.pop(context);
            },
            selectedColor: Colors.white,
            selectedTileColor: Colors.purpleAccent.shade100,
            leading: Icon(
              Icons.home,
              size: 30,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 20,
                //  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.purpleAccent.shade100,
            selected: selectindex==1,
            onTap: () {
              menuClicked(1);
              Profile();
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.person,
              size: 30,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 20,
                //  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.purpleAccent.shade100,
            selected: selectindex==2,
            onTap: () {
              menuClicked(2);
              MyBucket();
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.card_travel,
              size: 30,
            ),
            title: Text(
              "My Bucket",
              style: TextStyle(
                fontSize: 20,
                //  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.purpleAccent.shade100,
            selected: selectindex==3,
            onTap: () {
              menuClicked(3);
              Order();
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.check_box,
              size: 30,
            ),
            title: Text(
              "Order",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height:10 ,
          ),
          Divider(
            height: 8,
            color: Colors.purpleAccent.shade100,
            thickness: 03,
            indent: 8,
            //endIndent: 8,
          ),
          ListTile(
            title: Text(
              "Setting",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Privacy Policies",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Logout",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }


}
