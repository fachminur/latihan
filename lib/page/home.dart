import 'package:flutter/material.dart';
import 'package:hello/page/beranda.dart';
import 'package:hello/utils/custom_widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: CustomButton(
            btnText: "Mulai",
            onBtnPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Beranda();
              }));
            },
          ),
        ),
      ),
    );
  }
}
