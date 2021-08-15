import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeSwiperImgs extends StatelessWidget {
  final List homeSwiperImg;

  const HomeSwiperImgs({Key? key, required this.homeSwiperImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Swiper(
        itemCount: homeSwiperImg.length,
        pagination: new SwiperPagination(),
        autoplay: true,
        itemBuilder: (BuildContext, int index) {
          return Image.network("${homeSwiperImg[index]['image']}",
              fit: BoxFit.fill);
        },
      ),
    );
  }
}
