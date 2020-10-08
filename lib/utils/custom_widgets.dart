import 'package:flutter/material.dart';
import 'package:hello/page/beranda2.dart';
import 'package:hello/page/dashboard.dart';
import 'package:hello/page/more.dart';
import 'package:hello/page/post.dart';
import 'package:hello/utils/constants.dart';

class HeroImage extends StatelessWidget {
  final double imgHeight;
  HeroImage({this.imgHeight});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset('assets/logo-bpkp.png'),
        width: MediaQuery.of(context).size.width,
        height: imgHeight);
  }
}

class CustomButton extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;
  CustomButton({this.btnText, this.onBtnPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape:
          new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
      onPressed: onBtnPressed,
      // color: Theme.of(context).primaryColor,
      color: Color(0xFF0033FF),
    );
  }
}

class MenuLink extends StatelessWidget {
  final String image;
  final String title;
  const MenuLink({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          // return Beranda2();
          return Dashboard();
        }));
        // Navigator.pushNamed(context, '/more');
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 20.0, 10.0, 10.0),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(15),
        //   color: Colors.white30,
        //   boxShadow: [
        //     BoxShadow(
        //       offset: Offset(0, 10),
        //       blurRadius: 20,
        //       color: Color(0xFF4056C6).withOpacity(.15),
        //     )
        //   ],
        // ),
        child: Container(
          height: 120.0,
          child: Column(
            children: [
              Container(
                width: 80.0,
                height: 70.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kBackgroundColor,
                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.scaleDown,
                        scale: 5)),
              ),
              SizedBox(
                height: kDefaultPadding / 4,
              ),
              Container(
                width: 60.0,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customCard(String img) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            // color: Colors.purple[400],
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: AssetImage('assets/$img.png'),
                // colorFilter: ColorFilter.mode(
                //     Colors.black.withOpacity(0.5), BlendMode.dstATop),
                fit: BoxFit.contain)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon(
              //   icon,
              //   size: 30.0,
              //   color: Colors.white,
              // ),
              //   Column(
              //     children: [
              //       Text(
              //         title,
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       SizedBox(
              //         height: kDefaultPadding / 4,
              //       ),
              //       Text(spots, style: TextStyle(color: Colors.white))
              //     ],
              //   )
            ],
          ),
        ),
      ));
}
