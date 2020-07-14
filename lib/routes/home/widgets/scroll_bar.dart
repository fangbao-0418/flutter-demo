import 'package:flutter/material.dart';
import '../../../utils/http.dart';

class SliderBar extends StatelessWidget {
  SliderBar({
    Key key
  }) {
    // 
    print('constructor');
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> n = [Text('123'), Text('123'), Text('123')];
    print(n);
    http33.get('https://youxuan-api.hzxituan.com/cweb/product/hotword/list').then((res) {
      print(res);
    });
    return Scrollbar(
      child: Container(
        child: Row(
          children: n
        ),
      ),
    );
  }
}