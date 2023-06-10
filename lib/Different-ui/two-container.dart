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

class MyHomePage extends StatelessWidget {
  var colorlist = [
    Colors.yellowAccent,
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.greenAccent
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.cyan.shade400,
                Colors.cyan.shade300,
                Colors.cyan.shade200,
                Colors.cyan.shade50,
                // Colors.greenAccent.shade400,
                // Colors.greenAccent,
                // Colors.greenAccent.shade200,
                // Colors.greenAccent.shade100
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: size.width * 0.05,
          child: Container(
            height: size.height * 0.75,
            width: size.width * 0.90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Your Active device..",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      PopupMenuButton(
                        onSelected: (value) {
                          switch (value) {
                            case 1:
                              print("turn of all");
                              break;
                            case 2:
                              print("choose device");
                              break;
                          }
                        },
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 1,
                              child: Text("Turn Off All"),
                            ),
                            PopupMenuItem(value: 2, child: Text("Disconnect")),
                          ];
                        },
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: colorlist[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
