import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Wrap Widget', home: WrapWidget());
  }
}

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
      ),
      body: Center(
          child: Container(
            /*color: Colors.yellow,
            height: 500,*/
            child: Wrap(
              /*alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.spaceBetween,*/
              direction: Axis.horizontal,
              spacing: 20,
              runSpacing: 20,
              children: [
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('AH')),
                  label: const Text('Hamilton'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('ML')),
                  label: const Text('Lafayette'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('HM')),
                  label: const Text('Mulligan'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('JL')),
                  label: const Text('Laurens'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('AH')),
                  label: const Text('Hamilton'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('ML')),
                  label: const Text('Lafayette'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('HM')),
                  label: const Text('Mulligan'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('JL')),
                  label: const Text('Laurens'),
                ),
              ],
            ),
          )),
    );
  }
}
