import 'package:flutter/material.dart';
import 'package:hello/utils/custom_widgets.dart';

class ShowMore extends StatefulWidget {
  @override
  _ShowMoreState createState() => _ShowMoreState();
}

class _ShowMoreState extends State<ShowMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff263c92),
      body: ListView(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Row(
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
                          style:
                              TextStyle(color: Colors.white, fontSize: 25.0)),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Akuntabilitas Pembangunan Nasional',
                          style:
                              TextStyle(color: Colors.white, fontSize: 25.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              children: [
                Text(
                  'Akuntabilitas Keuangan Negara / Daerah',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      MenuLink(
                        image: 'assets/flutter.png',
                        title: 'SIMDA',
                      ),
                      MenuLink(
                        image: 'assets/flutter.png',
                        title: 'SISKEUDES',
                      ),
                      MenuLink(
                        image: 'assets/flutter.png',
                        title: 'Reviu PA/PBJ',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
