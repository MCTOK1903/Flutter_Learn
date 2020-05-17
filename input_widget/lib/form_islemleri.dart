import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selam"),
      ),
      body: ListView(
        children: <Widget>[
          TextField(),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 200,
          ),
        ],
      ),
    );
  }
}
