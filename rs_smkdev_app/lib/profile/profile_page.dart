import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 50),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 70),
                          child: Center(
                            child: Column(children: <Widget>[
                              Text(
                                'Jhomn Kennedy',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Laki - laki',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                '123456789012',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 40,),
                              DefaultTabController(
                                  length: 2, // length of tabs
                                  initialIndex: 0,
                                  child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: TabBar(
                                            labelColor: Colors.blue,
                                            unselectedLabelColor: Colors.black,
                                            //heading tab
                                            tabs: [
                                              Tab(text: 'Notifikasi'),
                                              Tab(text: 'History Booking'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 20),
                                            height: 500, //height of TabBarView
                                            decoration: BoxDecoration(
                                                border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
                                            child:
                                                TabBarView(children: <Widget>[
                                              Container(
                                                child: Center(
                                                  child: Text('Display Tab 1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                                ),
                                              ),
                                              Container(
                                                child: Center(
                                                  child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                                ),
                                              ),
                                            ])
                                        )
                                      ]
                                  )
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //image profile
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 140),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
