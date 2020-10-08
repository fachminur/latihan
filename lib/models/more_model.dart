import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

class More {
  String message;
  String code;
  String menu;
  String img;

  More({this.message, this.code, this.img, this.menu});

  factory More.createMore(Map<String, dynamic> object) {
    return More(code: object['code'], menu: object['nama'], img: object['img']);
  }

  static Future<List<More>> getMore() async {
    String apiURL = "localhost/api/public/api/more";

    var apiResult = await http.get(apiURL);
    var jsonObject = jsonDecode(apiResult.body);

    List<dynamic> listMore;
    (jsonObject as Map<String, dynamic>)['menu'];
    List<More> mores = [];
    for (int i = 0; i < listMore.length; i++)
      mores.add(More.createMore(listMore[i]));
    return mores;
  }
}
