import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/berita_baru.dart';
import 'package:rs_smkdev_app/home/items/kontak.dart';
import 'package:rs_smkdev_app/home/items/temui_kami.dart';
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
            TemuiKami(),
            TentangKami(),
            SizedBox(height: 30,),
            BeritaBaru(),
            SizedBox(height: 30,),
            Kontak(),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}

