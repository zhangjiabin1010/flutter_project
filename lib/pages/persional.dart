import 'package:flutter/material.dart';

class Persional extends StatefulWidget {
  Persional({Key? key}) : super(key: key);

  @override
  _PersionalState createState() => _PersionalState();
}

class _PersionalState extends State<Persional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我")),
      body: Center(child: Text("我的内容")),
    );
  }
}
