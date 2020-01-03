import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("return"),
          onPressed: ()=> Navigator.pop(context),
        ),
      ),
    );
  }
}