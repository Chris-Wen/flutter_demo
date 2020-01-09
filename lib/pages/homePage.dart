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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("路由跳转"),
                      onPressed: ()=>Navigator.pushNamed(context, "secondPage"),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      highlightColor: Colors.blue[700],
                      colorBrightness: Brightness.dark,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      child: Text("各种button"),
                      onPressed: ()=>Navigator.pushNamed(context, "buttonPage"),
                    ),
                    RaisedButton.icon(
                      textColor: Colors.pinkAccent,
                      icon: Icon(Icons.link),
                      label: Text('图片组件'),
                      onPressed: ()=>Navigator.pushNamed(context, "imagePage"),
                    )
                  ],
                )
              ],
            ),

            RaisedButton(
              child: Text('布局组件'),
              onPressed: ()=>Navigator.pushNamed(context, 'layoutPage'),
            ),
            RaisedButton(
              color: Colors.lightBlue,
              colorBrightness: Brightness.dark,
              child: Text('容器组件'),
              onPressed: ()=>Navigator.pushNamed(context, 'containerPage'),
            ),
            RaisedButton(
              color: Colors.lightBlue,
              colorBrightness: Brightness.dark,
              child: Text('支付页面'),
              onPressed: ()=>Navigator.pushNamed(context, 'payPage', arguments: {'courseId' : 123} ),
            ),
          ],
        ),
      ),
    );
  }
}

class PayData {
  final int courseId;
  PayData(this.courseId);
}
