import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'items/image_slider.dart';
import 'items/tentang_kami.dart';
import 'items/title_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            ImgSlider(),
            SizedBox(height: 30),
            TitleMenu(title: "Temui Kami", colorTitle: "#000000",),
            SizedBox(height: 550),
            TentangKami(),
            SizedBox(height: 20,),
            TitleMenu(title: "Berita Terbaru", colorTitle: "#000000",),
            SizedBox(height: 200,),
            TitleMenu(title: "Kontak & Pengaduan", colorTitle: "#000000",),
            SizedBox(height: 200,)
          ],
        ),
      ),
    );
  }
}

