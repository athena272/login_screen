import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BackgroundImage extends StatelessWidget {
  BackgroundImage({
    Key? key,
  }) : super(key: key);

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1542396601-dca920ea2807?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=751&q=80',
    'https://images.unsplash.com/photo-1536152470836-b943b246224c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=438&q=80',
    'https://images.unsplash.com/photo-1548567117-02328f050eaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
      ),
      items: imgList
          .map((item) => Container(
                child: Center(
                    child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  height: height,
                )),
              ))
          .toList(),
    );
  }
}
