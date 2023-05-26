import 'package:classico/Material-ui/tabbar/screen/train.dart';
import 'package:classico/Material-ui/tabbar/screen/tramscreen.dart';
import 'package:classico/Material-ui/tabbar/screen/walk.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TabbarS(),
    );
  }
}

class TabbarS extends StatefulWidget {
  const TabbarS({Key? key}) : super(key: key);

  @override
  State<TabbarS> createState() => _TabbarSState();
}

class _TabbarSState extends State<TabbarS> with TickerProviderStateMixin{
  late final TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        bottom: TabBar(
        controller: _tabController,tabs: [
          Tab(
            icon: Icon(Icons.train),
            text: "Train",
          ),
          Tab(
            icon: Icon(Icons.run_circle_outlined),
            text: "Walk",
          ),
          Tab(
            icon: Icon(Icons.tram),
            text: "Tram",
          ),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TrainScreen(),
          WalkScreen(),
          TramScreen(),
        ],
      ),
    );
  }
}
