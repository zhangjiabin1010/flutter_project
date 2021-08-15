import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';

Future getHomePageContent() async {
  try {
    print('开始获取gethomepage请求数据=============================');
    Response response;
    Dio dio = new Dio();
    // dio.options.contentType = 'application/x-www-form-urlencoded';
    print(servicePath["homePageContent"]);
    response = await dio.get(servicePath["homePageContent"] as String);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  } catch (e) {
    return print('ERROR:====>${e}');
  }
}
