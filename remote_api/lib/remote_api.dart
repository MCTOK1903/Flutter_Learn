import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:remote_api/model/Post.dart';
import 'dart:convert';

class RemoteAPI extends StatefulWidget {
  @override
  _RemoteAPIState createState() => _RemoteAPIState();
}

class _RemoteAPIState extends State<RemoteAPI> {
  List<Post> post;

  Future<List<Post>> fetchPost() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/posts");

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => Post.fromJson(e))
          .toList();
    } else {
      throw Exception('is not connected ${response.statusCode}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RemoteAPI'),
      ),
      body: bodyFutureBuilder(),
    );
  }

  Widget bodyFutureBuilder() {
    return FutureBuilder(
        future: fetchPost(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(snapshot.data[index].id.toString()),
                    ),
                    title: Text(snapshot.data[index].title),
                    subtitle: Text(snapshot.data[index].body),
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}