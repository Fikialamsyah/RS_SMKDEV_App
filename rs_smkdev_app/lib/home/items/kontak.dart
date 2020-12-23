import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/title_menu.dart';

class Kontak extends StatefulWidget {
  @override
  _KontakState createState() => _KontakState();
}

class _KontakState extends State<Kontak> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TitleMenu(title: "Kontak & Pengaduan", colorTitle: "#000000",),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                children: <Widget>[
                    Icon(Icons.add_location_outlined),
                    SizedBox(width: 10,),
                    Text('Rumah Sakit SMKDEV', style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.bold
                    ),), 
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 55, top: 5),
                child: Row(
                children: <Widget>[
                    Text('Jl. Margacinta No.29', style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.grey
                    ),),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
            children: <Widget>[
              Icon(Icons.email_outlined, color: Colors.grey,),
              SizedBox(width: 10,),
              Text('info@smk.dev', style: Theme.of(context).textTheme.subtitle1.copyWith(color:Colors.grey)),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                children: <Widget>[
                  Icon(Icons.phone_callback_outlined, color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('+622 7000 0000', style: Theme.of(context).textTheme.subtitle1.copyWith(color:Colors.grey)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20),
                child: Row(
                children: <Widget>[
                  Icon(Icons.apartment_outlined, color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('+622 7000 0000', style: Theme.of(context).textTheme.subtitle1.copyWith(color:Colors.grey)),
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}