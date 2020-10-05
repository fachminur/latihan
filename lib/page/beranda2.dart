import 'package:flutter/material.dart';
import 'package:hello/utils/constants.dart';
import 'package:hello/utils/custom_widgets.dart';

class Beranda2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(context),
      body: Body(),
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
                  Wrap(
                    children: <Widget>[
                      MenuLink(
                        image: 'assets/PSN.png',
                        title: 'PSN',
                      ),
                      MenuLink(
                        image: 'assets/Was-Covid.png',
                        title: 'WAS-COVID 19',
                      ),
                      MenuLink(
                        image: 'assets/UMKM.png',
                        title: 'UMKM',
                      ),
                      MenuLink(
                        image: 'assets/Bansos.png',
                        title: 'DATA BANSOS',
                      ),
                      MenuLink(
                        image: 'assets/KSP.png',
                        title: 'KSP',
                      ),
                      MenuLink(
                        image: 'assets/BPJS.png',
                        title: 'BPJS',
                      ),
                    ],
                  )
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
