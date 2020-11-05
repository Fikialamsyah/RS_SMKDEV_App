import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/title_menu.dart';


class BeritaBaru extends StatelessWidget {
  const BeritaBaru({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TitleMenu(
            title: "Berita Terbaru", 
            colorTitle: "#000000",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: <Widget>[
                  //kumpulan function ini digunakan untuk memanggil format card berita
                  BeritaBaruCard(
                    newsUpdate: "Training Center \n\n",
                    newsUpdateDesc: "Training Center bekerja sama dengan\nSMKDEV untuk...",
                    press: () {},
                  ),
                  BeritaBaruCard(
                    newsUpdate: "Baksos SMKDEV \n\n",
                    newsUpdateDesc: "Untuk kesekian kalinya SMKDEV\nmelakukan bakti sosial...",
                    press: () {},
                  ),
                  BeritaBaruCard(
                    newsUpdate: "Training Center \n\n",
                    newsUpdateDesc: "Training Center bekerja sama dengan\nSMKDEV untuk...",
                    press: () {},
                  )
                ],
              ),
          )
        ],
      ),
    );
  }
}


//digunakan untuk format card dalam berita
class BeritaBaruCard extends StatelessWidget {
  const BeritaBaruCard({Key key, this.press, this.newsUpdate, this.newsUpdateDesc})
      : super(key: key);

  final Function press;
  final String newsUpdate;
  final String newsUpdateDesc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        width: 250,
        height: 260,
        child: Column(
          children: <Widget>[
            //replace with image
            Container(
              height: 170,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey
                  )
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: newsUpdate,
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: newsUpdateDesc,
                          style: TextStyle(color: Colors.grey, fontSize: 12))
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}