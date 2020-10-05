import 'package:flutter/material.dart';
import 'package:hello/page/beranda2.dart';
import 'package:hello/page/more.dart';
import 'package:hello/page/post.dart';
import 'package:hello/utils/constants.dart';

class HeroImage extends StatelessWidget {
  final double imgHeight;
  HeroImage({this.imgHeight});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset('assets/flutter.png'),
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
      color: Theme.of(context).primaryColor,
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
          return Beranda2();
        }));
        // Navigator.pushNamed(context, '/more');
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 20.0, 10.0, 10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
