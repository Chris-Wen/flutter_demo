import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("各种button示例")),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              RaisedButton( 
                disabledTextColor: Colors.red,
                child: Text('normal'), 
                onPressed: ()=>{},
              ),
              RaisedButton( 
                color: Colors.blue,
                focusColor: Colors.red,
                highlightColor: Colors.red,
                colorBrightness: Brightness.dark,
                child: Text('active'),
                onPressed: ()=>{},
              ),
              RaisedButton(
                focusColor: Colors.deepOrangeAccent,
                color: Colors.red,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  'active1',
                  // style: 
                ),
                onPressed: ()=>{},
              )
              // CrossAxisAlignment
            ],
          )
        ],
      ),
    );
  }
}