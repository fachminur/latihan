import 'package:flutter/material.dart';
import 'package:hello/api/api.dart';
import 'package:hello/utils/custom_widgets.dart';
import 'package:hello/page/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String message = '';

  @override
  void dispose() {
    emailController.dispose();
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
                                labelText: 'Email',
                                labelStyle: TextStyle(fontSize: 20)),
                            controller: emailController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Email cant be empty';
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
                                var email = emailController.text;
                                var password = passwordController.text;
                                setState(() {
                                  message = 'Please wait...';
                                });
                                var rsp = await loginUser(email, password);
                                print(rsp);
                                if (rsp.containsKey('status')) {
                                  setState(() {
                                    message = rsp['status_text'];
                                  });
                                  if (rsp['status'] == 1) {
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
                                  }
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
