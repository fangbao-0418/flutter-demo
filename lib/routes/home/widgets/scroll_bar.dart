import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import '../../../utils/http.dart';

class SliderBar extends StatefulWidget {
  @override
  _SliderBarState createState() => _SliderBarState();
}

class _SliderBarState extends State<SliderBar> {
  List listData;
  initState () {
    print('init state');
    super.initState();
    http33.get('https://youxuan-api.hzxituan.com/cweb/product/hotword/list').then((res) {
      var body = convert.jsonDecode(res.body);
      var data = body['data'];
      print(data);
      setState(() {
        listData = data;
      });
    });
  }
  Widget buildItem () {
    // List<Widget> tiles = [];
    print('ssss 1');
    // for (var item in listData) {
    //   tiles.add(
    //     Text(item)
    //   );
    // }
    // return Column(
    //   children:tiles
    // );
    return Text('child 1');
  }
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Container(
        child: buildItem(),
      ),
    );
  }
}