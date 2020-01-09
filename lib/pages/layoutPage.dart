import 'package:flutter/material.dart';
import 'dart:math';

class LayoutPage extends StatelessWidget {
  final _biggerfont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('布局组件'),
      ),
      body: ListView(
        children: <Widget>[
          _listTiles('Row 布局'),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 3, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                textWidget(),
                textWidget(),
                textWidget(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              textWidget(),
              textWidget(),
              textWidget(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 3, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                textWidget(),
                textWidget(),
                textWidget(),
              ],
            ),
          ),
          Divider(),
          _listTiles('Flex 布局'),
          Divider(),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: randomColor(),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30.0,
                  color: randomColor(),
                ),
              ),
            ],
          ),
          Divider(),
          _listTiles('流式布局'),
          Divider(),
          Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center, //沿主轴方向居中
            children: <Widget>[
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('A')),
                label: new Text('Hamilton'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('M')),
                label: new Text('Lafayette'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('H')),
                label: new Text('Mulligan'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('J')),
                label: new Text('Laurens'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('K')),
                label: new Text('Laurens'),
              )
            ]..addAll(_chips(20)),
          ),
          Divider(),
          _listTiles('层叠布局 Stack、Positioned'),
          Divider(),
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
                child: Text('container' * 20),
              ),
              Positioned(
                width: 80,
                height: 120,
                top: 10,
                left: 120,
                child: textWidget(),
              ),
              Positioned(
                width: 80,
                height: 30,
                top: 50,
                left: 150,
                child: textWidget(),
              ),
            ],
          ),
          Divider(),
          _listTiles('对齐与相对定位（Align）'),
          Divider(),
          Container(
            height: 300,
            color: Colors.orangeAccent,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FlutterLogo(size: 60),
                ),
                Align(
                  //FractionalOffset 函数
                  alignment: FractionalOffset(0.2, 0.1),
                  child: Text(
                    '相对定位',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _listTiles(String string) {
    return ListTile(
      title: Text(
        string,
        style: _biggerfont,
      ),
    );
  }

  List<Widget> _chips(int total) {
    final _widgets = <Widget>[];
    final _chip = Chip(
      avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('T')),
      label: new Text('Laurens'),
    );
    for (var i = 0; i < total; i++) {
      _widgets.add(_chip);
    }
    print(_widgets);
    return _widgets;
  }
}

Container textWidget() {
  //创建子类widget
  return Container(
    width: 80,
    height: 50,
    color: randomColor(),
  );
}

Color randomColor() {
  // print(Random().nextInt(256));
  return Color.fromARGB(255, Random().nextInt(256) + 0,
      Random().nextInt(256) + 0, Random().nextInt(256) + 0);
}
