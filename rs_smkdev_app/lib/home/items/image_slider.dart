import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImgSlider extends StatefulWidget {
  @override
  _ImgSliderState createState() => _ImgSliderState();
}

class _ImgSliderState extends State<ImgSlider> {

  //add auto image slider
  static final List<String> imgSlider = [
    'orange.jpeg',
    'blue.jpeg',
    'purple.jpeg'
  ];
  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          child: Image.asset(
            'images/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 300,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        autoPlayImage,

      ],
    );
  }
}