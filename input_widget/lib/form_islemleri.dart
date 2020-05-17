import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  String textArea = "";
  int maxLines = 1;
  FocusNode fnode;
  TextEditingController textEditingController1;

  @override
  void initState() {
    super.initState();
    fnode = FocusNode();
    textEditingController1 = TextEditingController(text: "selam");
    fnode.addListener(() {
      setState(() {
        if (fnode.hasFocus) {
          maxLines = 3;
        } else { 
          maxLines = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    fnode.dispose();
    textEditingController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selam"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //FocusScope.of(context).requestFocus(fnode);
          print(textEditingController1.text.toString());
        },
        child: Icon(Icons.add_box),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "as ",
              ),
              maxLines: maxLines,
              autofocus: false,
              controller: textEditingController1,
              focusNode: fnode,
              textInputAction: TextInputAction.next,
              onChanged: (x) {
                textArea = x;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "as ",
              ),
              maxLines: maxLines,
              autofocus: false,
              textInputAction: TextInputAction.next,
              maxLength: 5,
              onChanged: (x) {
                textArea = x;
                print(x);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            color: Colors.green,
            width: double.infinity,
            height: 200,
            child: Align(
              alignment: Alignment.center,
              child: Text("$textArea"),
            ),
          ),
        ],
      ),
    );
  }
}
