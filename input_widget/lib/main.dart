import 'package:flutter/material.dart';
import 'form_islemleri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Input_dersleri",
      initialRoute: "/",

      routes: {

        '/': (context) => FormIslemleri(),
      },
    );
  }
}
