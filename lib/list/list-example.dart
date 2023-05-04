import 'package:classico/list/user.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Listpratical());
  }
}

class Listpratical extends StatefulWidget {
   Listpratical({Key? key}) : super(key: key);

  @override
  State<Listpratical> createState() => _ListpraticalState();
}

class _ListpraticalState extends State<Listpratical> {
  var isChecked = false;
  var userlist=<User>[];
 @override
  void initState() {
    super.initState();
    userlist.add(User(1,'parin', 'parinjasani@gmail.com'));
    userlist.add(User(2, 'mno', 'abc@gmail.com'));
    userlist.add(User(3, 'xyz', 'abc@gmail.com'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: userlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              Icons.account_circle_rounded,
            ),
            trailing: Checkbox(
              value: userlist[index].isChecked,
              onChanged: (value) {
                setState(() {
                  userlist[index].isChecked=value!;
                }
                );
              },
            ),
            title: Text(userlist[index].name),
            subtitle: Text(userlist[index].email),
          );
        },
      ),
    );
  }
}
