import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), 
        onPressed: ()=>{},
        tooltip: '底部按钮',
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      appBar: AppBar(title: Text('容器组件')),
      body: Wrap(
        children: <Widget>[
          // container(),
          // DecoratedBox(
          //   decoration: BoxDecoration(color: Colors.red),
          // )
          //限制类容器
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 100
            ), 
            child: Container(
              child: DecoratedBox(decoration: BoxDecoration(color: Colors.red),),
            ),
          ),

          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text("Hello world!"),
            ),
          ),
          // _decoratedBox()
        ],
      ),
    );
  }

  Widget container() {
    return Container(
      margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
      constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
      decoration: BoxDecoration(
          //背景装饰
          gradient: RadialGradient(
              //背景径向渐变
              colors: [Colors.red, Colors.orange],
              center: Alignment.topLeft,
              radius: .98),
          boxShadow: [
            //卡片阴影
            BoxShadow(
                color: Colors.black54,
                offset: Offset(-2.0, 2.0),
                blurRadius: 4.0)
          ]),
      transform: Matrix4.rotationZ(.2), //卡片倾斜变换
      alignment: Alignment.center, //卡片内文字居中
      child: Text(
        //卡片文字
        "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
      ),
    );
  }

  Widget _decoratedBox() {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.orange),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text("Hello world!"),
      ),
    );
  }
}
