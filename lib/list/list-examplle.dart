import 'package:classico/list/list-builder.dart';
import 'package:classico/list/list-separator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
        ),
        body: MyHompage(),
      ),
    );
  }
}
class MyHompage extends StatelessWidget{
  var imagelist=[
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'assets/images/1097303.jpg',
    'assets/images/IMG_7947.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
   return ListView.separated(
     itemCount: 3,
       itemBuilder:(context,index)
           {
            return Stack(
              children: [
                Container(
                  height: 90,
                  width: 400,
                  color: Colors.blueGrey,
                  child: Stack(
                    children: [
                      Positioned(
                        left:5,
                        top: 3,
                        child: CircleAvatar(
                          radius: 40,
                         backgroundImage:NetworkImage(
                             imagelist[index]
                         ),
                        ),
                      ),
                      Positioned(
                        right: 2,
                          bottom: 2,
                          child: Icon(Icons.camera_alt,size: 40,
                          )
                      ),
                    ],
                  ),
                )
              ],
            );
           },
           separatorBuilder: (context,index)
              {
                return SizedBox(
                  height: 2.5,
                );
              },
   );
  }

}
