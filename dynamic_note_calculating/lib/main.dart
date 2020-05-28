import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DynamicNoteCalculating',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String dersAdi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ortalama Hesaplama'),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      body: mainWidget(),
    );
  }

  Widget mainWidget() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(10),
              child: formWidget(),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.cyan,
              child: Text('Liste '),
            ),
          ),
        ],
      ),
    );
  }

  Widget formWidget() {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Ders Adi',
              hintText: 'Ders Adi',
              border: OutlineInputBorder(),
            ),
            validator: (girilenDeger){
              if(girilenDeger.length>0){
                return null;
              }else{
                return "Ders Adi bos olamaz";
              }
            },
            onSaved: (kaydedilecekDeger){
              dersAdi = kaydedilecekDeger;
            },
          ),
        ],
      ),
    );
  }
}
