import 'package:flutter/material.dart';
import 'home.dart';
import 'categories.dart';
import 'hot.dart';
import 'persional.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ("首页")),
    BottomNavigationBarItem(icon: Icon(Icons.list), label: ("分类")),
    BottomNavigationBarItem(
        icon: Icon(Icons.local_fire_department), label: ("热门")),
    BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: ("我")),
  ];

  final List<Widget> navigationPages = [
    Home(),
    Categories(),
    Hot(),
    Persional()
  ];

  var currentPage;
  int currentIndex = 0;

  @override
  void initState() {
    currentPage = navigationPages[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: ((index) {
              setState(() {
                currentIndex = index;
                currentPage = navigationPages[currentIndex];
              });
            }),
            items: bottomTabs),
        body: currentPage,
      ),
    );
  }
}
