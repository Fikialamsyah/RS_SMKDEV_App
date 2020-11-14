import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/home/items/title_menu.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:rs_smkdev_app/profile/profile_page.dart';

class TemuiKami extends StatefulWidget {
  @override
  _TemuiKamiState createState() => _TemuiKamiState();
}

class _TemuiKamiState extends State<TemuiKami> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleMenu(
          title: "Temui Kami",
          colorTitle: "#000000",
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey),
          ),
        ),
        Schedule()
      ],
    );
  }
}

class GetUsers {
  int id;
  String name;
  String email;
  String phoneNumber;

  GetUsers({this.id, this.name, this.email, this.phoneNumber});

  factory GetUsers.fromJson(Map<String, dynamic> json) {
    return GetUsers(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        phoneNumber: json['phone']);
  }
}

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final String apiURL = 'https://jsonplaceholder.typicode.com/users';

  Future<List<GetUsers>> fetchJSONData() async {
    var jsonResponse = await http.get(apiURL);

    if (jsonResponse.statusCode == 200) {
      final jsonItems =
          json.decode(jsonResponse.body).cast<Map<String, dynamic>>();

      List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
        return GetUsers.fromJson(json);
      }).toList();

      return usersList;
    } else {
      throw Exception('Failed to load data from internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.only(left: 20),
      child: FutureBuilder<List<GetUsers>>(
        future: fetchJSONData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data
                .map(
                  (user) => ListTile(
                    title: Text(
                      user.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    subtitle: Text(user.phoneNumber),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
    // return Container(
    //   padding: EdgeInsets.only(left: 20),
    //   alignment: Alignment.topLeft,
    //   child: Column(
    //     children: <Widget>[
    //       Text('Rumah Sakit SMKDEV', style: Theme.of(context).textTheme.headline6.copyWith(
    //         fontWeight: FontWeight.bold
    //       )),
    //       Text('Jl. Margacinta No.29\nSenin - Jumat: 08.00 - 20.00\nSabtu : 08.00 - 17.00'),
    //       SizedBox(height: 20,),
    //        Text('Rumah Sakit SMKDEV', style: Theme.of(context).textTheme.headline6.copyWith(
    //         fontWeight: FontWeight.bold
    //       )),
    //       Text('Jl. Margacinta No.29\nSenin - Jumat: 08.00 - 20.00\nSabtu : 08.00 - 17.00'),
    //       SizedBox(height: 20,),
    //        Text('Rumah Sakit SMKDEV', style: Theme.of(context).textTheme.headline6.copyWith(
    //         fontWeight: FontWeight.bold
    //       )),
    //       Text('Jl. Margacinta No.29\nSenin - Jumat: 08.00 - 20.00\nSabtu : 08.00 - 17.00'),
    //       SizedBox(height: 20,),
    //     ],
    //   ),
    // );
  }
}
