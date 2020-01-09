import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("各种button示例")),
      body: 
      ListView(
        children: <Widget>[
          textRowWidget('RaiseButton'),
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
        
          textRowWidget('FlatButton'),
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

          textRowWidget('OutlineButton'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              OutlineButton(
                child: Text("outline"),
                onPressed: ()=>{},
              ),
              OutlineButton(
                textColor: Colors.red,
                color: Colors.blue,
                child: Text("outline"),
                onPressed: ()=>{},
              ),
              OutlineButton(
                highlightedBorderColor: Colors.red,
                borderSide: BorderSide(color: Colors.red),
                textColor: Colors.red,
                color: Colors.blue,
                child: Text("outline"),
                onPressed: ()=>{},
              ),
            ],
          ),

          
          textRowWidget('IconButton'),
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

          
          textRowWidget('Mixed Button'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton.icon(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                icon: Icon(Icons.send),
                label: Text('Send'),
                onPressed: ()=>{},
              ),
              OutlineButton.icon(
                borderSide: BorderSide(color: Colors.red),
                icon: Icon(Icons.add),
                label: Text('Add'),
                onPressed: ()=>{},
              ),
              FlatButton.icon(
                color: Colors.blue,
                colorBrightness: Brightness.dark,
                icon: Icon(Icons.delete_forever),
                label: Text('DEL'),
                onPressed: ()=>{},
              )
            ],
          ),
  
          // textRowWidget('Mixed Button'),

        ],
      ),
    );
  }
}


//单行文本组件封装
Row textRowWidget(String text) {
  return Row(
    children: <Widget>[
      Text(
        text,
        overflow: TextOverflow.ellipsis,
        textScaleFactor: 1.2,
        textDirection: TextDirection.ltr,
        
        style: TextStyle(
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          wordSpacing: 10,
          color: Colors.black,
          decoration: TextDecoration.underline
        ),
      ),
    ],
  );
}