import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();

    //加载页面停顿3s
    Future.delayed(Duration(seconds:5),(){
      print('loading delayed');
      //替换主页
      Navigator.of(context).pushReplacementNamed("homePage");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //层叠组件
      child: Stack(
        children: <Widget>[
          //加载页面背景图
          Image.asset(
            'assets/images/phone_bg.png'
          ),

          Center(
            child: Text(
              '启动页面文案...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                decoration: TextDecoration.none
              ),
            ),

          ),
        ],
      ),
    );
  }
}