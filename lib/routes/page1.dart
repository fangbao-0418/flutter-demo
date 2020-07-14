import 'package:flutter/material.dart';
class Page1Route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page"),
      ),
      body: Center(
        child: Text("This is page1"),
      ),
    );
  }
}