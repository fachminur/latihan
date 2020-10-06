import 'package:flutter/material.dart';
import 'package:hello/api/api.dart';
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

  String message = '';

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          HeroImage(
            imgHeight: MediaQuery.of(context).size.height * 0.15,
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
                                labelStyle: TextStyle(fontSize: 20)),
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
                                labelStyle: TextStyle(fontSize: 20)),
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
                                        color: Theme.of(context).primaryColor),
                                  ))
                            ],
                          ),
                          CustomButton(
                            btnText: 'Login',
                            onBtnPressed: () async {
                              if (_formkey.currentState.validate()) {
                                var username = usernameController.text;
                                var password = passwordController.text;
                                setState(() {
                                  message = 'Please wait...';
                                });
                                var rsp = await loginUser(username, password);
                                // print(rsp);
                                SharedPreferences sharedPreferences =
                                    await SharedPreferences.getInstance();
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
                                      context, '/beranda');
                                  // }
                                } else {
                                  setState(() {
                                    message = 'Login Failed';
                                  });
                                }
                              }
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(message)
                        ],
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
