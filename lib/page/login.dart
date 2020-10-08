import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:hello/api/api.dart';
import 'package:hello/utils/constants.dart';
import 'package:hello/utils/custom_widgets.dart';
import 'package:hello/page/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isLoading = false;

  String message = '';

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var getpadding = MediaQuery.of(context).padding;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      body: ColorfulSafeArea(
        color: Color(0xFF0033FF),
        child: Column(
          children: <Widget>[
            // HeroImage(
            //   imgHeight: MediaQuery.of(context).size.height * 0.15,
            // ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                WavyHeader(),
                Image.asset(
                  'assets/icon_login.jpg',
                  scale: 12.0,
                  width: MediaQuery.of(context).size.width / 2.2,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "SPIP Mobile",
                style: TextStyle(
                    fontSize: 28.0,
                    color: Color(0xFF0033FF),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(fontSize: 16),
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(32.0)),
                              ),
                              controller: usernameController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Username cant be empty';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(fontSize: 16),
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(32.0)),
                              ),
                              controller: passwordController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Password cant be empty';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('New user?'),
                                FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Signup',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              Theme.of(context).primaryColor),
                                    ))
                              ],
                            ),
                            MaterialButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: _isLoading
                                    ? Center(
                                        child: CircularProgressIndicator(
                                        backgroundColor: Colors.white,
                                        valueColor:
                                            new AlwaysStoppedAnimation<Color>(
                                                Colors.blue),
                                      ))
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Login',
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
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  var username = usernameController.text;
                                  var password = passwordController.text;
                                  setState(() {
                                    message = 'Please wait...';
                                    _isLoading = true;
                                  });
                                  var rsp = await loginUser(username, password);
                                  SharedPreferences sharedPreferences =
                                      await SharedPreferences.getInstance();
                                  print(rsp);
                                  if (rsp.containsKey('access_token')) {
                                    // setState(() {
                                    //   message = rsp['status_text'];
                                    // });
                                    // if (rsp['status'] == 1) {
                                    var iduser = rsp['user']['id'];
                                    var userrsp = rsp['user'];
                                    sharedPreferences.setString(
                                        'token', rsp['access_token']);
                                    sharedPreferences.setInt('id', iduser);
                                    // sharedPreferences.setString('users', userrsp);
                                    var token =
                                        sharedPreferences.getString("token");
                                    var idusershared =
                                        sharedPreferences.getInt('id');
                                    // var usershared =
                                    //     sharedPreferences.getString('users');
                                    print(token);
                                    print(idusershared);
                                    // print(usershared);
                                    print(rsp['user']['email']);
                                    setState(() {
                                      _isLoading = false;
                                      message = '';
                                    });
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (context) {
                                    //   return HomePage();
                                    // }));
                                    // Navigator.pushReplacement(
                                    //     context,
                                    //     new MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             HomePage()));
                                    Navigator.pushReplacementNamed(
                                        context, '/dashboard3');
                                  } else {
                                    final snackBarFailed = SnackBar(
                                      content: Text('Login Failed'),
                                      backgroundColor: Colors.red,
                                    );
                                    setState(() {
                                      message = '';
                                      _isLoading = false;
                                      Scaffold.of(context)
                                          .showSnackBar(snackBarFailed);
                                    });
                                  }
                                } else {
                                  setState(() {
                                    message = 'Login Failed';
                                    _isLoading = false;
                                  });
                                }
                              },
                              // color: Theme.of(context).primaryColor,
                              color: Color(0xFF0033FF),
                            ),
                            // CustomButton(
                            //   btnText: 'Login',
                            //   onBtnPressed: () async {
                            //     if (_formkey.currentState.validate()) {
                            //       var username = usernameController.text;
                            //       var password = passwordController.text;
                            //       setState(() {
                            //         message = 'Please wait...';
                            //         _isLoading = true;
                            //       });
                            //       var rsp = await loginUser(username, password);
                            //       SharedPreferences sharedPreferences =
                            //           await SharedPreferences.getInstance();
                            //       print(rsp);
                            //       if (rsp.containsKey('access_token')) {
                            //         // setState(() {
                            //         //   message = rsp['status_text'];
                            //         // });
                            //         // if (rsp['status'] == 1) {
                            //         var iduser = rsp['user']['id'];
                            //         var userrsp = rsp['user'];
                            //         sharedPreferences.setString(
                            //             'token', rsp['access_token']);
                            //         sharedPreferences.setInt('id', iduser);
                            //         // sharedPreferences.setString('users', userrsp);
                            //         var token =
                            //             sharedPreferences.getString("token");
                            //         var idusershared =
                            //             sharedPreferences.getInt('id');
                            //         // var usershared =
                            //         //     sharedPreferences.getString('users');
                            //         print(token);
                            //         print(idusershared);
                            //         // print(usershared);
                            //         print(rsp['user']['email']);
                            //         setState(() {
                            //           _isLoading = false;
                            //           message = '';
                            //         });
                            //         // Navigator.push(context,
                            //         //     MaterialPageRoute(builder: (context) {
                            //         //   return HomePage();
                            //         // }));
                            //         // Navigator.pushReplacement(
                            //         //     context,
                            //         //     new MaterialPageRoute(
                            //         //         builder: (BuildContext context) =>
                            //         //             HomePage()));
                            //         Navigator.pushReplacementNamed(
                            //             context, '/beranda');
                            //       }
                            //     } else {
                            //       setState(() {
                            //         message = 'Login Failed';
                            //         _isLoading = false;
                            //       });
                            //     }
                            //   },
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(message),
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WavyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: blueGradients,
              begin: Alignment.topLeft,
              end: Alignment.center),
        ),
        height: MediaQuery.of(context).size.height / 2.5,
      ),
    );
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be visible.
    var path = Path();
    path.lineTo(0.0, size.height);

    //creating first curver near bottom left corner
    var firstControlPoint = new Offset(size.width / 7, size.height - 30);
    var firstEndPoint = new Offset(size.width / 6, size.height / 1.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //creating second curver near center
    var secondControlPoint = Offset(size.width / 5, size.height / 4);
    var secondEndPoint = Offset(size.width / 1.5, size.height / 5);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //creating third curver near top right corner
    var thirdControlPoint =
        Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = Offset(size.width, 0.0);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move to top right corner
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
