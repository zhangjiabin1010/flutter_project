import 'package:flutter/material.dart';
import 'pages/index_home.dart';
import 'pages/loading_home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primaryColor: Colors.blue),
      home: new LoadingHome(),
      routes: <String, WidgetBuilder>{
        "index_home": (BuildContext context) => new App(),
      },
    );
  }
}
