import 'dart:convert';
import 'package:http/http.dart';

class Api {
  // static final String baseURL = 'http://10.237.118.29/api/public/api/login';
  static final String baseURL = 'https://randomuser.me/api/?results=10';
  static Map content;

  static Future<void> sendRequest(String method, String endpoint,
      [Map body, Map headers]) async {
    Response response;

    switch (method) {
      case 'GET':
        try {
          response = await get('$baseURL' + endpoint);
          Api.content = jsonDecode(response.body);
        } catch (e) {
          Api.content["error"] = e.toString();
        }

        break;
      case 'POST':
        try {
          response =
              await post('$baseURL' + endpoint, body: body, headers: headers);
          Api.content = jsonDecode(response.body);
          print('Passando depois POST');
        } catch (e) {
          Api.content["error"] = e.toString();
        }

        break;
      case 'PUT':
        try {
          response =
              await put('$baseURL' + endpoint, body: body, headers: headers);
          Api.content = jsonDecode(response.body);
        } catch (e) {
          Api.content["error"] = e.toString();
        }

        break;
      case 'DELETE':
        try {
          response = await delete('$baseURL' + endpoint, headers: headers);
          Api.content = jsonDecode(response.body);
        } catch (e) {
          Api.content["error"] = e.toString();
        }

        break;
    }
  }
}
