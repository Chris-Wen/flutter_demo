import 'package:flutter/material.dart';
import 'loading.dart';
import 'unknowPage.dart';

//页面路由
import 'pages/homePage.dart';
import 'pages/secondPage.dart';

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
        "secondPage": (BuildContext context) => SecondPage()
      },
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknownPage()),       //错误路由处理，返回UnknownPage

      home: LoadingPage(),
    );
  }
}


// class SecondPage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("app 第2个页面"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text("点击返回上一个页面"),
//           onPressed: ()=>Navigator.pop(context),
//         ),
//       ),
//     );
//   }
// }

