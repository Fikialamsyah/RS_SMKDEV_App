import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/temui_kami.dart';
import 'package:rs_smkdev_app/home/items/title_menu.dart';
import 'package:http/http.dart' as http;

class Doctor{
  int id;
  String name;
  String avatar;
  String gender;
  Jadwal jadwal;

  Doctor({this.id, this.name, this.avatar, this.gender, this.jadwal});

  factory Doctor.fromJson(Map<String, dynamic> parsedJson){
    return Doctor(
      id: parsedJson['id'],
      name: parsedJson['name'],
      avatar: parsedJson['avatar'],
      gender: parsedJson['gender'],
      jadwal: Jadwal.fromJson(parsedJson['jadwal'])
    );
  }
}

class Jadwal{
  String hari;
  String jam;

  Jadwal({this.hari, this.jam});

  factory Jadwal.fromJson(Map<String, dynamic> json){
    return Jadwal(
      hari: json['hari'],
      jam: json['jam']
    );
  }
}

class TentangKami extends StatefulWidget {
  @override
  _TentangKamiState createState() => _TentangKamiState();
}

class _TentangKamiState extends State<TentangKami> {

  // parsing json doctor
  // final String apiURL = 'https://my-json-server.typicode.com/dikaMuharman/doctor-json/doctor';
  //
  // Future<List<Doctor>> fetchJSONData() async {
  //   var jsonResponse = await http.get(apiURL);
  //
  //   if (jsonResponse.statusCode == 200) {
  //     final jsonItems =
  //     json.decode(jsonResponse.body).cast<Map<String, dynamic>>();
  //
  //     List<Doctor> doctorList = jsonItems.map<Doctor>((json) {
  //       return Doctor.fromJson(json);
  //     }).toList();
  //
  //     return doctorList;
  //   } else {
  //     throw Exception('Failed to load data from internet');
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        height: 650,
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
                    //digunakan untuk berpindah page ke menu TentangKamiMenu()
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
    Size size = MediaQuery.of(context).size; //mendapatkan width dan height maksimum sesuai resolusi layar
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
        width: size.width / 2 - 25,
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
    Size size = MediaQuery.of(context).size; //mendapatkan width dan height maksimum sesuai resolusi layar
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20, 
          top: 20, 
          bottom: 5
        ),
        width: size.width,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
      ),
    );
  }
}
