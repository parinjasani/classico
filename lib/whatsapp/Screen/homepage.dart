import 'package:flutter/material.dart';

import '../widget/chatwidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: Icon(Icons.camera_alt_outlined),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(Icons.search_sharp),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 1,
                        child: Text("New group"),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("New brodcast"),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text("Linked devices"),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text("Starred messaages"),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text("Payments"),
                      ),
                      PopupMenuItem(
                        value: 6,
                        child: Text("Settings"),
                      )
                    ];
                  },
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 25,
                    child: Tab(
                      icon: Icon(Icons.groups),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                      child: Text("Chats"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                      child: Text("Status"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                      child: Text("Calls"),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
                child: TabBarView(
              children: [
                //tab 1
                Container(color: Colors.black,),
                //tab2 ----> chatwidget
                ChatWidget(),
                //tab3 ----> status
                Container(color: Colors.black,),
                //tab 4 --->calls
                Container(color: Colors.black,),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
