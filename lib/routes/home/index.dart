import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../utils/navigator.dart';
import '../../utils/color.dart';
import './widgets/scroll_bar.dart';

class HomeRoute extends StatelessWidget {
  HomeRoute({
    Key key
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rgbColor('E60113'),
      ),
      body: Container(
        child: Column(
          children: [
            SliderBar(),
            Container(
              height: 140,
              // width: 100,
              // color: rgbColor('E60113'),
              child: new Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network("https://assets.hzxituan.com/crm/e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b8551594453851013.jpg",fit: BoxFit.fill,);
                },
                itemCount: 3,
                pagination:  new SwiperPagination(builder: SwiperPagination.fraction),
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            ),
          ]
        )
      )
    );
    // return Container(
    //   child: Center(
    //     child: Listener(
    //       child: Text('home'),
    //       onPointerDown: (e) {
    //         navigator(context, 'login');
    //       },
    //     ),
    //   ),
    // );
  }
}