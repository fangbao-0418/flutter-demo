import 'package:flutter/material.dart';
import 'package:my_flutter/utils/color.dart';
import 'dart:convert' as convert;
import '../../../utils/http.dart';

class SliderBar extends StatefulWidget {
  @override
  _SliderBarState createState() => _SliderBarState();
}

class _SliderBarState extends State<SliderBar> {
  List listData = [];
  initState () {
    print('init state');
    super.initState();
    http.get('https://daily-crm-test.hzxituan.com/order/getOrderTypeList').then((res) {
      // var body = convert.jsonDecode(res.body);
      // var data = body['data'];
      // print('fetch end');
      // setState(() {
      //   listData = data;
      // });
    });
  }
  Widget buildItem () {
    List<Widget> tiles = [];
    print('ssss $listData');
    for (var item in listData) {
      tiles.add(
        Padding(
          padding: EdgeInsets.fromLTRB(10, 14, 10, 14),
          child: Text(
            item,
            style: TextStyle(
              fontSize: 16,
              color: rgbColor('ffffff')
            )
          ),
        )
      );
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tiles
      ),
    );
    // return Text('child 1');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: buildItem(),
      ),
    );
  }
}