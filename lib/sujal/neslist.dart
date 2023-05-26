import 'package:classico/sujal/model/item.dart';
import 'package:classico/sujal/model/menu.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MusicApp(),
    );
  }
}

class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  var categoryList = <Menu>[];
  var itemList = <Item>[];

  @override
  void initState() {
    categoryList.add(Menu('Top Rated'));
    categoryList.add(Menu('BollyWood'));
    categoryList.add(Menu('Hindi'));
    categoryList.add(Menu('90s Popular'));
    itemList.add(
        Item('Apna Bana le', 'assets/images/banana.jpg'));
    itemList.add(
        Item('Bole jo koyal', 'assets/images/banana.jpg'));
    itemList.add(Item('Levels', 'assets/images/banana.jpg'));
    itemList.add(
        Item('No Comptition', 'assets/images/banana.jpg'));
    itemList.add(Item('Yalgaar', 'assets/images/banana.jpg'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      categoryList[index].title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: (MediaQuery.of(context).size.height) * 0.23,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: itemList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Image.asset(itemList[index].image,height: 100,),
                              Text(itemList[index].item,)
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  height: 10,
                );
              },
              itemCount: categoryList.length)),
    );
  }
}
