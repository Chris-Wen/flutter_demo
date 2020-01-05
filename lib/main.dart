import 'package:flutter/material.dart';
import 'loading.dart';
import 'unknowPage.dart';

//页面路由
import 'pages/homePage.dart';
import 'pages/secondPage.dart';
import 'pages/buttonPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //注册路由
      routes: <String, WidgetBuilder>{
        "homePage": (BuildContext context) => HomePage(),
        "secondPage": (BuildContext context) => SecondPage(),
        "buttonPage": (BuildContext context)=>ButtonPage(),
      },
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknowPage()),       //错误路由处理，返回UnknownPage

      home: LoadingPage(),
    );
  }
}


