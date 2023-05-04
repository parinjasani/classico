import 'package:classico/list/whatsapp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListRadioCheckbox()
    );
  }
}
class ListRadioCheckbox extends StatefulWidget {
   ListRadioCheckbox({Key? key}) : super(key: key);


  @override
  State<ListRadioCheckbox> createState() => _ListRadioCheckboxState();
}

class _ListRadioCheckboxState extends State<ListRadioCheckbox> {
  var imageList=['https://picsum.photos/id/237/200/300','https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg','https://picsum.photos/id/237/200/300','https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg','https://picsum.photos/id/237/200/300','https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'];
  var user=<Listofname>[];
  var gender='male';
  updateState(String? values)
  {
    setState(() {
      gender=values!;
    });
  }
  @override
  void initState() {
    user.add(Listofname('parin','parinjasani@gmail.com'));
    user.add(Listofname('sujal', 'sujalpatoliya@gmail.com'));
    user.add(Listofname('aditya', 'adityababariya@gmail.com'));
    user.add(Listofname('pujan', 'pujanbharodiya@gmail.com'));
    user.add(Listofname('megh', 'meghpatel@gmail.com'));
    user.add(Listofname('chaman', 'chamanpatel@gmail.com'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) {
        return ListTile(
         leading: CircleAvatar(
           backgroundImage: NetworkImage(
           imageList[index]
           ),
         ),
          trailing:Checkbox(
            value: user[index].isChecked,
            onChanged: (value) {
              setState(() {
                user[index].isChecked=value!;
              });
          },
          ),
          title: Text(
            user[index].name
          ),
          // subtitle: Row(
          //   children: [
          //     RadioListTile(value: 'male',
          //       groupValue: gender,
          //       onChanged:(value) {
          //       updateState(value);
          //     },
          //         title: Text('male')
          //     ),
          //     RadioListTile(value: 'female',
          //       groupValue: gender,
          //       onChanged:(value) {
          //         updateState(value);
          //       },
          //         title: Text('female')),
          //     RadioListTile(value: 'other',
          //       groupValue: gender,
          //       onChanged:(value) {
          //         updateState(value);
          //       },
          //     title: Text('Other')
          //     ),
          //   ],
          // ),
        );

      },
      )
    );
  }
}
