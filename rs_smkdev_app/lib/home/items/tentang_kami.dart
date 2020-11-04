import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/temui_kami.dart';
import 'package:rs_smkdev_app/home/items/title_menu.dart';

class TentangKami extends StatelessWidget {
  const TentangKami({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        height: 630,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TitleMenu(
                  title: "Tentang Kami",
                  colorTitle: "#ffffff",
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TemuiKami()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text("Selengkapnya",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            TentangKamiCard1(
              press: () {},
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  TentangKamiCard2(
                    nameDoc: "dr.Setiawai, SpM \n\n",
                    docDesc: "Katarak dan Bedah \nRetraktif",
                    press: () {},
                  ),
                  TentangKamiCard2(
                    nameDoc: "dr.Angger Pribadi, \nSpMM\n",
                    docDesc: "Vitreo Retina\n ",
                    press: () {},
                  ),
                  TentangKamiCard2(
                    nameDoc: "dr. Daffa,Mkes\n\n",
                    docDesc: "Pediatrik Oftalmologi\n ",
                    press: () {},
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class TentangKamiCard2 extends StatelessWidget {
  const TentangKamiCard2({Key key, this.press, this.nameDoc, this.docDesc})
      : super(key: key);

  final Function press;
  final String nameDoc;
  final String docDesc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
        width: 170,
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
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: nameDoc,
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: docDesc,
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

class TentangKamiCard1 extends StatelessWidget {
  const TentangKamiCard1({Key key, this.press}) : super(key: key);

  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 5),
        width: 320,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
      ),
    );
  }
}
