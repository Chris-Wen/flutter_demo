import 'package:flutter/material.dart';


class UnknowPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("unknow page"),),
      body: Center(
        child: RaisedButton(
          child: Text("get a unknow page"),
          onPressed: ()=>Navigator.pop(context),
        ),
      ),
    );
  }
}