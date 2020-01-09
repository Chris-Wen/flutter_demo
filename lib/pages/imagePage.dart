import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("图片相关组件")),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
            children: <Widget>[
              textRowWidget('加载本地图片'),
              Image.asset('assets/images/1.png', width: 50.0),
              
              textRowWidget('加载网络图片'),
              Container(
                width: 150,
                height: 150,
                color: Colors.redAccent,
                margin: EdgeInsets.only(top: 10.0), //容器外填充
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578317314595&di=da919c3c10e49c277a1c16bb16bd9818&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201510%2F06%2F20151006200400_rSPGE.thumb.700_0.gif', 
                  width:100.0, 
                  height: 100.0,
                )
              ),
              Container(
                width: 150,
                
              )
            ],
        ),
      ) ,
        
      // Image.network('https://avatars2.githubusercontent.com/u/20419996?s=460&v=4', width: 100.0,)  

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