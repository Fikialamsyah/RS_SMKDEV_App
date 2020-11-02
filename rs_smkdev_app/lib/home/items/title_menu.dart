import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({Key key, this.title, this.colorTitle}) : super(key: key);

  final String title;
  final String colorTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: HexColor(colorTitle),fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
