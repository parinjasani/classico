import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../model/Album.dart';

class AlbumScreen extends StatefulWidget {

  Album album;

  AlbumScreen(this.album);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState(album);
}

class _AlbumScreenState extends State<AlbumScreen> {

  Album album;

  _AlbumScreenState(this.album);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Album"),
    ),
      body: FutureBuilder(
        future: fetchalbum(album.id),
        builder: (context, snapshot) {
          var album= snapshot.data;
          if(snapshot.hasData)
            {
              return Center(
                child: Text(
                  '''
                  ${album!.id}
                  ${album.title}
                  ${album.userId}
                  '''
                ),
              );
            }
          else if(snapshot.hasError){
            return Text("something went wrong");
          }
          else{
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<Album>fetchalbum(int? id) async {
    Response response = await get(Uri.parse("https://jsonplaceholder.typicode.com/albums/$id"));
    if (response.statusCode == 200) {
      //sucess

      // print("Respone : ${response.body}");
      Album album=Album.fromJson(jsonDecode(response.body));
      return album;
    } else {
      throw Exception("error in fecthing data");

    }
  }

}
