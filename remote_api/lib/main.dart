import 'package:flutter/material.dart';
import 'package:remote_api/remote_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',   
      home: RemoteAPI() ,
    );
  }
}

