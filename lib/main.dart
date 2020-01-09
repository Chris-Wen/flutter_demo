import 'package:flutter/material.dart';
import 'loading.dart';
import 'unknowPage.dart';

//页面路由
import 'pages/homePage.dart';
import 'pages/secondPage.dart';
import 'pages/buttonPage.dart';
import 'pages/imagePage.dart';
import 'pages/layoutPage.dart';
import 'pages/containerPage.dart';
import 'pages/payPage.dart';


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
        "imagePage": (BuildContext context)=>ImagePage(),
        "layoutPage": (BuildContext context)=>LayoutPage(),
        "containerPage": (BuildContext context)=>ContainerPage(),
        "payPage": (BuildContext context)=>PayPage(),
      },
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknowPage()),       //错误路由处理，返回UnknownPage
      // onGenerateRoute: (RouteSettings setting) {
      //   print(setting.arguments.courseId);
      //   if (setting.name == 'payPage') {
      //     return MaterialPageRoute(builder: (context) => PayPage(setting));
      //   }
      // },
      home: LoadingPage(),
    );
  }
}


