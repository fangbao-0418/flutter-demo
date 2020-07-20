import 'package:flutter/material.dart';
import './routes/home/index.dart';
import './routes/login.dart';
import './routes/page1.dart';
import './utils/http.dart';
import 'package:dio/adapter.dart';
import 'dart:io';

void main () {
  dio.options.headers["user-agent"] = "xxx";
  dio.options.contentType = "text";
  //  dio.interceptors.add(LogInterceptor());
  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.findProxy = (uri) {
        return "PROXY 192.168.124.10:64151";
      };
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  };
  print('main entry');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo111',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'entry'),
      routes: {
        'home': (context) => HomeRoute(),
        'login': (context) => LoginRoute(text: '222'),
        'page1': (context) => Page1Route()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeRoute()
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     // Here we take the value from the MyHomePage object that was created by
    //     // the App.build method, and use it to set our appbar title.
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     child: HomeRoute(),
    //   )
    //   // body: Center(
    //   //   // Center is a layout widget. It takes a single child and positions it
    //   //   // in the middle of the parent.
    //   //   //  child: Column(children: <Widget>[
    //   //   //   RaisedButton(
    //   //   //     child: Text("login"),
    //   //   //     onPressed: () {
    //   //   //       // Navigator.push( context,
    //   //   //       //   MaterialPageRoute(builder: (context) {
    //   //   //       //       return LoginRoute(
    //   //   //       //         text: 'login'
    //   //   //       //       );
    //   //   //       //   }));
    //   //   //       Navigator.pushNamed(context, 'login', arguments: "1");
    //   //   //     }
    //   //   //   ),
    //   //   //   RaisedButton(
    //   //   //     child: Text("page1"),
    //   //   //     onPressed: () {
    //   //   //       // Navigator.push( context,
    //   //   //       //   MaterialPageRoute(builder: (context) {
    //   //   //       //       return Page1Route();
    //   //   //       //   }));
    //   //   //       Navigator.pushNamed(context, 'page1', arguments: "1");
    //   //   //     }
    //   //   //   ),
    //   //   //  ],),
    //   // ),
    // );
  }
}
