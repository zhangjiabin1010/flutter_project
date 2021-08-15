import 'package:flutter/material.dart';
import 'dart:async';

class LoadingHome extends StatefulWidget {
  LoadingHome({Key? key}) : super(key: key);

  @override
  _LoadingHomeState createState() => _LoadingHomeState();
}

class _LoadingHomeState extends State<LoadingHome> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 2), () {
      print('正在loading');
      Navigator.of(context).pushReplacementNamed("index_home");
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("images/loadingImage.jpg"),
    );
  }
}
