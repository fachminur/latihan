import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello/utils/constants.dart';
import 'package:hello/utils/custom_widgets.dart';
import 'package:http/http.dart' as http;

class Beranda2 extends StatelessWidget {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(apiUrl);
    return jsonDecode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(context),
      body: Body(),
      // body:
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: BackButton(
        color: Colors.white,
      ),
      actions: [
        IconButton(
            icon: Image.asset('assets/Bansos.png'),
            onPressed: () {
              Navigator.of(context).pop();
            })
      ],
    );
  }
}

class Body extends StatelessWidget {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(apiUrl);
    return jsonDecode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Header(),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              ListView(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                children: [
                  Text(
                    'Akuntabilitas Keuangan Negara / Daerah',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  // Container(
                  // child: Wrap(
                  //   children: <Widget>[
                  //     MenuLink(
                  //       image: 'assets/PSN.png',
                  //       title: 'PSN',
                  //     ),
                  //     MenuLink(
                  //       image: 'assets/Was-Covid.png',
                  //       title: 'WAS-COVID 19',
                  //     ),
                  //     MenuLink(
                  //       image: 'assets/UMKM.png',
                  //       title: 'UMKM',
                  //     ),
                  //     MenuLink(
                  //       image: 'assets/Bansos.png',
                  //       title: 'DATA BANSOS',
                  //     ),
                  //     MenuLink(
                  //       image: 'assets/KSP.png',
                  //       title: 'KSP',
                  //     ),
                  //     MenuLink(
                  //       image: 'assets/BPJS.png',
                  //       title: 'BPJS',
                  //     ),
                  //   ],
                  // ),
                  Container(
                    child: FutureBuilder<List<dynamic>>(
                      future: _fecthDataUsers(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              padding: EdgeInsets.all(10),
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                // return ListTile(
                                //   leading: CircleAvatar(
                                //     radius: 30,
                                //     backgroundImage:
                                //         NetworkImage(snapshot.data[index]['avatar']),
                                //   ),
                                // title: Text(snapshot.data[index]['first_name'] +
                                //     " " +
                                //     snapshot.data[index]['last_name']),
                                // subtitle: Text(snapshot.data[index]['email']),
                                // );
                                return MenuLink(
                                  image: 'assets/PSN.png',
                                  title: snapshot.data[index]['first_name'],
                                );
                              });
                          //
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                  // )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/more_header.png',
            height: 80.0,
            width: 80.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Sasaran Strategis 2:',
                      style: TextStyle(color: Colors.white, fontSize: 25.0)),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Akuntabilitas Pembangunan Nasional',
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
