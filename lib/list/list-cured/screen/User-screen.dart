import 'dart:math';

import 'package:classico/list/list-cured/model/person.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  var personList = <Person>[];

  void insertPerson(Person person, BuildContext context) {
    setState(() {
      personList.add(person);
      Navigator.pop(context);
    });
  }

  void updatePerson(Person person, BuildContext context) {
    setState(() {
      var index = personList.indexWhere((element) => element.id == person.id);
      personList[index] = person;
      Navigator.pop(context);
    });
  }

  void deletePerson(Person person, BuildContext context) {
    setState(() {
      personList.removeWhere((element) => element.id == person.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: personList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showBottomSheetDialog(context, personList[index]);
            },
            trailing: PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 1:
                    deletePerson(personList[index], context);
                    break;
                  case 2:
                    showAlertdialog();
                    break;
                }
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(value: 1, child: Text("Remove")),
                  PopupMenuItem(value: 2, child: Text("Logout")),
                ];
              },
            ),
            leading: CircleAvatar(
              radius: 24,
              child: Text(
                personList[index].name.isNotEmpty
                    ? personList[index].name[0].toUpperCase()
                    : 'X',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            title: Text(personList[index].name),
            subtitle: Text(personList[index].email),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheetDialog(context, null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void showBottomSheetDialog(BuildContext context, Person? person) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();

    if (person != null) {
      _nameController.text = person.name;
      _emailController.text = person.email;
    }

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.fromLTRB(
                24, 24, 24, MediaQuery.of(context).viewInsets.bottom + 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Enter name'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Enter email'),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text.toString().trim();
                    String email = _emailController.text.toString().trim();

                    int id = person == null ? Random().nextInt(999) : person.id;
                    var p = Person(id: id, name: name, email: email);

                    if (person == null) {
                      insertPerson(p, context);
                    } else {
                      updatePerson(p, context);
                    }
                  },
                  child: Text(person == null ? 'Insert' : 'Update'),
                )
              ],
            ),
          );
        },
        isScrollControlled: true);
  }

  void showAlertdialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Are you sure waant to log out"),
          actions: [
            OutlinedButton(
                onPressed: () => Navigator.pop(context), child: Text("Cancle")),
            SizedBox(
              width: 10,
            ),
            OutlinedButton(
                onPressed: () => Navigator.pop(context), child: Text("Logout"))
          ],
        );
      },
    );
  }
}
