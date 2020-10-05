import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello/utils/constants.dart';
import 'package:hello/utils/custom_widgets.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text('EKOSISTEM PENGAWASAN',
                    style: TextStyle(color: Colors.white, fontSize: 25.0)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    // height: MediaQuery.of(context).size.height / 1.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0)),
                    ),
                  ),
                  ListView(
                    primary: false,
                    padding:
                        EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0),
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Akuntabilitas Keuangan Negara / Daerah',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MenuLink(
                                    image: 'assets/SIMDA.png',
                                    title: 'SIMDA',
                                  ),
                                  MenuLink(
                                    image: 'assets/SISKEUDES.png',
                                    title: 'SISKEUDES',
                                  ),
                                  MenuLink(
                                    image: 'assets/PA-PBJ.png',
                                    title: 'Reviu PA/PBJ',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Akuntabilitas Pembangunan Nasional',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MenuLink(
                              image: 'assets/PSN.png',
                              title: 'PSN',
                            ),
                            MenuLink(
                              image: 'assets/Was-Covid.png',
                              title: 'WAS COVID 19',
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
                              image: 'assets/More-Apps.png',
                              title: 'MORE',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Text(
                        'Akuntabilitas Badan Usaha',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MenuLink(
                              image: 'assets/BLUD.png',
                              title: 'SIA-BLUD',
                            ),
                            MenuLink(
                              image: 'assets/SIA-PDAM.png',
                              title: 'SIA-PDAM',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Text(
                        'Kualitas Pengendalian Intern',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MenuLink(
                              image: 'assets/SPIP.png',
                              title: 'SPIP',
                            ),
                            MenuLink(
                              image: 'assets/Pemantauan-SPIP.png',
                              title: 'Pemantauan SPIP',
                            ),
                            MenuLink(
                              image: 'assets/PK-APIP.png',
                              title: 'IACM',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Tata Kelola Pengawasan',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MenuLink(
                              image: 'assets/SIMA Renlakpor.png',
                              title: 'SIMA (RENLAKPOR)',
                            ),
                            MenuLink(
                              image: 'assets/LMS.png',
                              title: 'LMS',
                            ),
                            MenuLink(
                              image: 'assets/MAP-Mobile.png',
                              title: 'MAP Mobile',
                            ),
                            MenuLink(
                              image: 'assets/medmon.png',
                              title: 'Media Monitoring',
                            ),
                            MenuLink(
                              image: 'assets/More-Apps.png',
                              title: 'Lainnya',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
