import 'package:flutter/material.dart';
import 'package:hello/utils/custom_widgets.dart';
import 'package:hello/page/login.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          child: HeroImage(
            imgHeight: MediaQuery.of(context).size.height * 0.7,
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'BPKP',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomButton(
                      btnText: 'Getting Started',
                      onBtnPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                    )
                  ],
                ))),
      ],
    ));
  }
}
