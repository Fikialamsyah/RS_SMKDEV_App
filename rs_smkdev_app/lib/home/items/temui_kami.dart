import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/title_menu.dart';

class TemuiKami extends StatefulWidget {
  @override
  _TemuiKamiState createState() => _TemuiKamiState();
}

class _TemuiKamiState extends State<TemuiKami> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleMenu(title: "Temui Kami", colorTitle: "#000000",),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
            ),
          ),
        ),
        SizedBox(height: 20,),
        Schedule()
      ],
    );
  }
}

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          Text('Rumah Sakit SMKDEV', style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold
          )),
          Text('Jl. Margacinta No.29\nSenin - Jumat: 08.00 - 20.00\nSabtu : 08.00 - 17.00'),
          SizedBox(height: 20,),
           Text('Rumah Sakit SMKDEV', style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold
          )),
          Text('Jl. Margacinta No.29\nSenin - Jumat: 08.00 - 20.00\nSabtu : 08.00 - 17.00'),
          SizedBox(height: 20,),
           Text('Rumah Sakit SMKDEV', style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold
          )),
          Text('Jl. Margacinta No.29\nSenin - Jumat: 08.00 - 20.00\nSabtu : 08.00 - 17.00'),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}