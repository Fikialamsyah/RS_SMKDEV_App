import 'package:flutter/material.dart';

class ImgSlider extends StatelessWidget {
  const ImgSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.only(left: 20, right: 20),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            'Sekilas Tentang\nRS. SMKDEV',
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            'SMKDEV komunitas developer siswa SMK jurusan\n'
                'Rekayasa Perangkat Lunak (RPL), Teknik Komputer\n'
                'dan Jaringan (TKJ) dan Multimedia (MM) dari\n'
                'seluruh Indonesia',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'bar',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Read',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
