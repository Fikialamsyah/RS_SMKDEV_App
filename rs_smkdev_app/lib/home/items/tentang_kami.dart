import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/title_menu.dart';

class TentangKami extends StatelessWidget {
  const TentangKami({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        height: 550,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TitleMenu(title: "Tentang Kami", colorTitle: "#ffffff",),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text("Selengkapnya",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ],
        ));
  }
}
