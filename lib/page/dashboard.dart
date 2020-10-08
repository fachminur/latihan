import 'package:flutter/material.dart';
import 'package:hello/utils/constants.dart';
import 'package:hello/utils/custom_widgets.dart';

class Dashboard extends StatelessWidget {
  final double appBarHeight = AppBar().preferredSize.height;
  final double topHeight = 260.0;
  final double extendedAppBarHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: BackButton(
        //   color: Colors.white,
        // ),
        title: Text('Dashboard'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                size: 26.0,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   width: double.infinity,
                //   decoration: BoxDecoration(color: Colors.white),
                //   padding: EdgeInsets.all(20.0),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         'Dashboard',
                //         style: TextStyle(fontSize: 30, color: Colors.black),
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: kDefaultPadding,
                // ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 20),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Text(
                //             "Data Sebaran SPIP",
                //             style: kTitleTextstyle,
                //           ),
                //           Text(
                //             "Lihat Detail",
                //             style: TextStyle(
                //                 color: kPrimaryColor,
                //                 fontWeight: FontWeight.w600),
                //           )
                //         ],
                //       ),
                //       Container(
                //         margin: EdgeInsets.only(top: 20),
                //         padding: EdgeInsets.all(20),
                //         height: 170,
                //         width: double.infinity,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           color: Colors.white,
                //           boxShadow: [
                //             BoxShadow(
                //               offset: Offset(0, 10),
                //               blurRadius: 30,
                //               color: kShadowColor,
                //             ),
                //           ],
                //         ),
                //         child: Image.asset(
                //           "assets/peta.png",
                //           fit: BoxFit.contain,
                //         ),
                //       ),
                //       // SizedBox(height: kDefaultPadding),
                //       // Row(
                //       //   children: <Widget>[
                //       //     RichText(
                //       //       text: TextSpan(
                //       //         children: [
                //       //           TextSpan(
                //       //             text: "Jumlah APIP\n",
                //       //             style: kTitleTextstyle,
                //       //           ),
                //       //           TextSpan(
                //       //             text: "Level 3/Total APIP",
                //       //             style: TextStyle(
                //       //               color: kTextLightColor,
                //       //             ),
                //       //           ),
                //       //         ],
                //       //       ),
                //       //     ),
                //       //     Spacer(),
                //       //     Text(
                //       //       "See details",
                //       //       style: TextStyle(
                //       //         color: kPrimaryColor,
                //       //         fontWeight: FontWeight.w600,
                //       //       ),
                //       //     ),
                //       //   ],
                //       // ),
                //     ],
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 175.0,
                        width: MediaQuery.of(context).size.width,
                        child: customCard('apip'))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 175.0,
                        width: MediaQuery.of(context).size.width,
                        child: customCard('peta'))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 210.0,
                        width: MediaQuery.of(context).size.width,
                        child: customCard('capaian'))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 2,
                          child: customCard('10besar'),
                        ),
                        // Container(
                        //   height: 120.0,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   child: customCard('rekomendasi'),
                        // )
                      ],
                    ),
                    Column(
                      children: [
                        // Container(
                        //   height: 110.0,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   child: customCard('apip'),
                        // ),
                        Container(
                          height: 170.0,
                          width: MediaQuery.of(context).size.width / 2,
                          child: customCard('area'),
                        ),
                        // Container(
                        //   height: 150.0,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   child: customCard('capaian'),
                        // )
                        Container(
                          height: 120.0,
                          width: MediaQuery.of(context).size.width / 2,
                          child: customCard('rekomendasi'),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
