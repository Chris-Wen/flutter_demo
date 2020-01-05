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
                  'active',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  )
                ),
                onPressed: ()=>{},
              )
              // CrossAxisAlignment
            ],
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Text('flat'),
                onPressed: ()=>{},
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('flat'),
                onPressed: ()=>{},
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              OutlineButton(
                textColor: Colors.red,
                child: Text("outline"),
                onPressed: ()=>{},
              ),
              OutlineButton(
                textColor: Colors.red,
                // padding: EdgeInsetsGeometry(),
                color: Colors.blue,
                child: Text("outline"),
                onPressed: ()=>{},
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: ()=>{},
              ),
              IconButton(
                icon: Icon(Icons.headset),
                color:Colors.red,
                onPressed: ()=>{},
              ),
              IconButton(
                iconSize: 50,
                icon: Icon(Icons.home),
                color:Colors.red,
                onPressed: ()=>{},
              )
            ],
          ),
        ],
      ),
    );
  }
}