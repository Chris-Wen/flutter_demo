import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is home page"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Maps'),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text('Album'),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("路由跳转"),
                      onPressed: ()=>Navigator.pushNamed(context, "secondPage"),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      highlightColor: Colors.blue[700],
                      colorBrightness: Brightness.dark,
                      textColor: Colors.red,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      child: Text("各种button"),
                      onPressed: ()=>Navigator.pushNamed(context, "buttonPage"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
