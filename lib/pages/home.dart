import 'package:flutter/material.dart';
import '../service/service_method.dart';
import 'dart:convert';

import 'home/home_swiper_img.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TextEditingController typeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页")),
      body: FutureBuilder(
        future: getHomePageContent(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print('获取到接口数据');
            var data = json.decode(snapshot.data.toString());
            List<Map> homeSwiperImg = (data['data'] as List).cast(); // 顶部轮播组件数
            return Column(
              children: <Widget>[
                HomeSwiperImgs(homeSwiperImg: homeSwiperImg), //页面顶部轮播组件
              ],
            );
          } else {
            return Center(child: Text("加载中....."));
          }
        },
      ),
    );
  }
}
