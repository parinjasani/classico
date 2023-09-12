import 'dart:convert';

import 'package:classico/network/get_req_jsonarray/model/Album.dart';
import 'package:classico/network/get_req_jsonarray/screen/album.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Albumlist extends StatefulWidget {

  @override
  State<Albumlist> createState() => _AlbumlistState();
}

class _AlbumlistState extends State<Albumlist> {

  List<Album> Albumlist= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albumlist screen'),
      ),
      body:FutureBuilder(
        future: getalbumlist(),
        builder: (context, snapshot) {
          Albumlist=snapshot.data ?? [];
          if(snapshot.hasData){
            return  ListView.builder(
              itemCount: Albumlist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AlbumScreen(Albumlist[index]),));
                  },
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade400,
                   child:  Text("${Albumlist[index].title![0].toUpperCase()}"),
                  ),
                  title: Text(
                      "${Albumlist[index].id}"),
                  subtitle: Text("${Albumlist[index].title}"),
                );
              },
            );
          }
          else if(snapshot.hasError)
          {
            return Center(child: Text("something went wrong"));
          }
          else{
            return Center(child: CircularProgressIndicator());
          }
        },
      )
    );
  }

  Future<List<Album>> getalbumlist() async {
    Response response = await get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    if (response.statusCode == 200) {
      //sucess

      // print("Respone : ${response.body}");

      List<dynamic> listofmap = jsonDecode(response.body);
      return listofmap.map((album) => Album.fromJson(album)).toList();
    } else {
      throw Exception("error in fecthing data");

    }
  }
}

