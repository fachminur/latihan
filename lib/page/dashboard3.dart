import 'package:flutter/material.dart';
import 'package:hello/utils/constants.dart';
import 'package:hello/utils/custom_widgets.dart';

class Dashboard3 extends StatefulWidget {
  @override
  _Dashboard3State createState() => _Dashboard3State();
}

class _Dashboard3State extends State<Dashboard3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Text(
            "SPIP",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: kBackgroundColor,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              tooltip: 'Home',
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 255,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  padding: EdgeInsets.only(top: 25),
                  // child: Image.asset("assets/logo-bpkp.png"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      // SizedBox(height: kDefaultPadding + 500),
                      // _buildStatistic(),
                      SizedBox(height: kDefaultPadding + 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          // margin: EdgeInsets.symmetric(vertical: 17.0),
                          // padding: EdgeInsets.symmetric(vertical: 10.0),
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: double.infinity,
                          child: _buildStatusCard(
                              'K/L/P yang Perlu Ditingkatkan Level Maturitas SPIP',
                              '350',
                              '(64,6%)',
                              Color(0xFF4d4c7d),
                              Colors.white,
                              Colors.red,
                              Color(0xFFff7272)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(18.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(10.0),
                                // decoration: BoxDecoration(color: Colors.amber),
                                child: Text(
                                  "5 Besar Wilayah Apip",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Wrap(
                                    children: [
                                      DataTable(columns: [
                                        DataColumn(
                                            label: Text(
                                          "Wilayah",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        )),
                                        DataColumn(
                                            label: Text('SPIP',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white)))
                                      ], rows: [
                                        DataRow(cells: [
                                          DataCell(Text("Jabar",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white))),
                                          DataCell(Text("23",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white)))
                                        ]),
                                        DataRow(cells: [
                                          DataCell(Text("Jatim",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white))),
                                          DataCell(Text("20",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white)))
                                        ]),
                                        DataRow(cells: [
                                          DataCell(Text("Jateng",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white))),
                                          DataCell(Text("18",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white)))
                                        ]),
                                        DataRow(cells: [
                                          DataCell(Text("Sumut",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white))),
                                          DataCell(Text("15",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white)))
                                        ]),
                                        DataRow(cells: [
                                          DataCell(Text("Sumsel",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white))),
                                          DataCell(Text("13",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white)))
                                        ]),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //     padding: EdgeInsets.only(top: 10.0),
                      //     child: Container(
                      //       height: 300.0,
                      //       decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.only(
                      //           topLeft: Radius.circular(20.0),
                      //           topRight: Radius.circular(20.0),
                      //         ),
                      //       ),
                      //       child: Column(
                      //         children: [
                      //           // Container(
                      //           //   padding: EdgeInsets.all(20.0),
                      //           //   alignment: Alignment.centerLeft,
                      //           //   child: Text(
                      //           //     'Pemetaan SPIP',
                      //           //     style: TextStyle(
                      //           //         fontSize: 20.0,
                      //           //         fontWeight: FontWeight.bold),
                      //           //   ),
                      //           // ),
                      //           Container(
                      //             child: Center(
                      //               child: Image.asset('assets/5besar.png'),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     )),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Container(
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20.0),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Pemetaan SPIP',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Image.asset('assets/id.png'),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              Flexible(
                                  child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildStatusCard(
                                      'K/L/P yang Perlu Peningkatan Efektivitas dan Efisiensi',
                                      '300',
                                      '(65.4%)',
                                      Color(0xFF04BFBF),
                                      Color(0xFF056674),
                                      Colors.red,
                                      Color(0xFFff7272)),
                                  Flexible(
                                    child: Column(
                                      children: [
                                        _buildStatusCard(
                                            'K/L/P yang Perlu Ditingkatkan Akuntabilitas Keuangan',
                                            '250',
                                            '(55.4%)',
                                            Color(0xFFffbb91),
                                            Colors.brown,
                                            Colors.red,
                                            Color(0xFFff7272)),
                                        _buildStatusCard(
                                            'K/L/P yang Perlu Peningkatan Pengamanan atas Aset',
                                            '57',
                                            '(15.4%)',
                                            Color(0xFF28df99),
                                            Color(0xFF056674),
                                            Colors.red,
                                            Color(0xFFff7272))
                                      ],
                                    ),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: double.infinity,
                          child: _buildStatusCard(
                              'K/L/P yang Perlu Peningkatan Kepatuhan Terhadap Peraturan',
                              '35',
                              '(6,5%)',
                              Color(0xFFA0A603),
                              Color(0xFF2b580c),
                              Colors.red,
                              Color(0xFFff7272)),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Container(
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20.0),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Capaian Maturitas',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Image.asset('assets/capaian2.png'),
                                  ),
                                )
                              ],
                            ),
                          )),
                      // Padding(
                      //   padding: EdgeInsets.all(10.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Expanded(
                      //         child: Expanded(
                      //           child: _buildRowCategori(
                      //               Colors.orangeAccent,
                      //               "Jumlah K/L/P yang perlu ditingkatkan Efisiensi",
                      //               "5%"),
                      //         ),
                      //       ),
                      //       SizedBox(width: 10),
                      //       Expanded(
                      //           child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           _buildColumnCategori(
                      //               Colors.orangeAccent,
                      //               "Jumlah K/L/P \nyang perlu ditingkatkan Akuntabilitas Keuangan",
                      //               "350"),
                      //           SizedBox(
                      //             height: 10.0,
                      //           ),
                      //           _buildColumnCategori(
                      //               Colors.orangeAccent,
                      //               "Jumlah K/L/P \nyang perlu ditingkatkan Aset",
                      //               "59"),
                      //         ],
                      //       ))
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(10),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: <Widget>[
                      //       Expanded(
                      //         child: _buildGender(
                      //             Colors.orangeAccent, "MALE", "59.5%"),
                      //       ),
                      //       SizedBox(width: 10),
                      //       Expanded(
                      //         child: _buildGender(
                      //             Colors.pinkAccent, "FEMALE", "40.5%"),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       children: [
                      //         Container(
                      //           height: MediaQuery.of(context).size.height / 2,
                      //           width: MediaQuery.of(context).size.width / 2,
                      //           child: customCard('10besar'),
                      //         ),
                      //         Container(
                      //           height: 120.0,
                      //           width: MediaQuery.of(context).size.width / 2,
                      //           child: customCard('rekomendasi'),
                      //         )
                      //       ],
                      //     ),
                      //     Column(
                      //       children: [
                      //         Container(
                      //           height: 110.0,
                      //           width: MediaQuery.of(context).size.width / 2,
                      //           child: customCard('apip'),
                      //         ),
                      //         Container(
                      //           height: 170.0,
                      //           width: MediaQuery.of(context).size.width / 2,
                      //           child: customCard('area'),
                      //         ),
                      //         Container(
                      //           height: 150.0,
                      //           width: MediaQuery.of(context).size.width / 2,
                      //           child: customCard('capaian'),
                      //         )
                      //       ],
                      //     )
                      //   ],
                      // ),
                      SizedBox(height: 10),

                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10),
                      //   child: RichText(
                      //     text: TextSpan(
                      //       text: "Pemetaan SPIP",
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 24,
                      //         color: Colors.black87,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(6),
                      //   child: Container(
                      //     margin: EdgeInsets.all(10.0),
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(70.0)),
                      //     height: 170,
                      //     child: Center(child: Image.asset("assets/id.png")),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: kDefaultPadding,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: <Widget>[
                      //     Text(
                      //       "Spread of Virus",
                      //       style: kTitleTextstyle,
                      //     ),
                      //     Text(
                      //       "See details",
                      //       style: TextStyle(
                      //         color: kPrimaryColor,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 20),
                      //   padding: EdgeInsets.all(20),
                      //   height: 178,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //     color: Colors.white,
                      //     boxShadow: [
                      //       BoxShadow(
                      //         offset: Offset(0, 10),
                      //         blurRadius: 30,
                      //         color: kShadowColor,
                      //       ),
                      //     ],
                      //   ),
                      //   child: Image.asset(
                      //     "assets/id.png",
                      //     fit: BoxFit.contain,
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(10.0),
                      //   child: Container(
                      //     margin: EdgeInsets.all(5.0),
                      //     height: MediaQuery.of(context).size.height * 0.25,
                      //     width: double.infinity,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //         color: Colors.accents),
                      //   ),
                      // ),
                      // Container(
                      //   margin: const EdgeInsets.symmetric(
                      //     vertical: 10.0,
                      //     horizontal: 20.0,
                      //   ),
                      //   padding: const EdgeInsets.all(10.0),
                      //   height: MediaQuery.of(context).size.height * 0.15,
                      //   decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //       colors: [Color(0xFFAD9FE4), Color(0xFF473F97)],
                      //     ),
                      //     borderRadius: BorderRadius.circular(20.0),
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     children: <Widget>[
                      //       Image.asset('assets/peta.png'),
                      //       Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: <Widget>[
                      //           Text(
                      //             'Do your own test!',
                      //             style: const TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 18.0,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           SizedBox(
                      //               height: MediaQuery.of(context).size.height *
                      //                   0.01),
                      //           Text(
                      //             'Follow the instructions\nto do your own test.',
                      //             style: const TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 10.0,
                      //             ),
                      //             maxLines: 2,
                      //           ),
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Expanded _buildStatusCard(String title, String count, String persen,
      Color color, Color colorTitle, Color colorCount, Color colorPersen) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colorTitle,
                  fontSize: 20,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text(count,
                style: TextStyle(
                  color: colorCount,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                )),
            Text(persen,
                style: TextStyle(
                  color: colorPersen,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildRowCategori(Color color, String title, String value) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      height: 200.0,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnCategori(Color color, String title, String value) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGender(Color color, String title, String value) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.accessible,
                size: 60,
                color: color,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Confirmed\nCase",
                    style: TextStyle(
                      color: Colors.black38,
                      height: 1.5,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStatistic() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      height: 140.0,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                height: 50,
                color: Colors.amber,
                child: Text(
                  "Jumlah K/L yang perlu ditingkatkan nilai Maturitas SPIP",
                  softWrap: true,
                )),
            Container(
                height: 50,
                color: Colors.blueAccent,
                child: Text(
                  "50%",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticItem(Color color, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.access_alarm,
          size: 50,
          color: color,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            SizedBox(height: 5),
            Text(value),
          ],
        ),
      ],
    );
  }
}
