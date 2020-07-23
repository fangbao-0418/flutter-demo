import 'package:flutter/material.dart';
import 'package:my_flutter/utils/color.dart';
import '../api.dart';
import '../../../states/share-date.dart';

class SliderBar extends StatefulWidget {
  @override
  _SliderBarState createState() => _SliderBarState();
}

class _SliderBarState extends State<SliderBar> {
  List listData = [];
  initState () {
    print('init state');
    super.initState();
    fetchData(); 
  }
  fetchData () {
    fetchHotWordList().then((res) {
      setState(() {
        listData = res;
      });
    });
  }
  Widget buildItem () {
    List<Widget> tiles = [];
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
    dynamic data = ShareDataWidget.of(context).data;
    print(data);
    return Container(
      child: Column(
        children: <Widget>[
          buildItem()
        ],
      ),
    );
  }
}