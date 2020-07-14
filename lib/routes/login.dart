import 'package:flutter/material.dart';
class LoginRoute extends StatelessWidget {
  LoginRoute({
    Key key,
    @required this.text,  // 接收一个text参数
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Center(
        child: Stack(children: <Widget>[
          Positioned(
            top: 8,
            left: 18.0,
            child: Text("I am Jack"),
          ),
          Positioned(
            top: 10.0,
            left: 136,
            child: Listener(
              child: Text("Your friend"),
              onPointerDown: (PointerDownEvent event) {
                print('down');
              },
              onPointerUp: (PointerUpEvent event) {
                print('up');
              },
            ),
          ),
          // AlertDialog(
          //   title: Text("提示"),
          //   content: Text("您确定要删除当前文件吗?"),
          //   actions: <Widget>[
          //     FlatButton(
          //       child: Text("取消"),
          //       onPressed: () => Navigator.of(context).pop(), //关闭对话框
          //     ),
          //     FlatButton(
          //       child: Text("删除"),
          //       onPressed: () {
          //         // ... 执行删除操作
          //         Navigator.of(context).pop(true); //关闭对话框
          //       },
          //     ),
          //   ],
          // )     
        ],)
      ),
    );
  }
}