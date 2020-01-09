import 'package:flutter/material.dart';
// import './homePage.dart';
class PayPage extends StatefulWidget {
  final courseId;
  PayPage({this.courseId});
  // PayPage( {Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomerState();
}

class _CustomerState extends State<PayPage> {
  Color bgColor = Color(0xf1f1f1f1);    //默认背景色
  Color lineColor = Color(0xfffffff);

  // _CustomerState(this.courseId);

  @override
  Widget build(BuildContext context) {
    // final PayData args = ModalRoute.of(context).settings.arguments;
    // args = Map<String, dynamic>.from(args);
    // print(args.courseId);
    print(ModalRoute.of(context).settings.name);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          title: Text( '购买课程', textAlign: TextAlign.center),
        ),
      body: Container(
        child: Text("12222"),
      ),
    );
  }
}