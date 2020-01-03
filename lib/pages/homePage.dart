import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is home page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("link to second page"),
          onPressed: ()=> Navigator.pushNamed(context, 'secondPage'),
        ),
      ),
    );
  }
}