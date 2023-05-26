import 'package:flutter/material.dart';

import '../modell/downloader.dart';

class ChatWidget extends StatefulWidget {
  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  var userlist = <Download>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userlist.add(Download(name: "Parin", msg: "hii", time: "10:10 AM"));
    userlist.add(Download(name: "Sujal", msg: "Kyare avsso?", time: "9:48 AM"));
    userlist.add(Download(
        name: "Adibapu", msg: "Masti kari levani ne?", time: "6:18 PM"));
    userlist.add(Download(
        name: "Pujan", msg: "kadak shabdo ma kai devanu....", time: "9:40 AM"));
    userlist
        .add(Download(name: "Megh", msg: "Saru..", time: "5:30 PM"));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userlist.length,
      itemBuilder: (context, index) => ListTile(
       // minVerticalPadding: 40,
        leading: CircleAvatar(
          backgroundColor: Color(0xFF075E55),
          radius: 28,
          child: Text(
              userlist[index].name.isNotEmpty ? userlist[index].name[0] : "X"),
        ),
        trailing: Container(child: Text(userlist[index].time)),
        title: Text(userlist[index].name),
        subtitle:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.mark_chat_read_rounded,size: 18,),
            SizedBox(width: 10,),
            Expanded(child: Text(userlist[index].msg,maxLines:1,overflow: TextOverflow.ellipsis,)),
          ],
        ),
      ),
    );
  }
}
