import 'package:flutter/material.dart';

class Hot extends StatefulWidget {
  Hot({Key? key}) : super(key: key);

  @override
  _HotState createState() => _HotState();
}

class _HotState extends State<Hot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("热门")),
      body: Center(child: Text("热门内容")),
    );
  }
}
