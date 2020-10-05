import 'package:http/http.dart' as http;
import 'dart:convert';

Future loginUser(String email, String password) async {
  String url = 'http://10.237.118.29/latihan/login.php';
  // try {
  final response = await http.post(url,
      headers: {"Accept": "Application/json"},
      body: {'email': email, 'password': password});
  var convertedDatatoJson = jsonDecode(response.body);
  return convertedDatatoJson;
  // } catch (error) {
  //   throw error;
  // }
}

//DEFINE VARIABLE url UNTUK MENAMPUNG END POINT
final String url = 'http://192.168.72.41/latihan/menu.php';
List
    data; //DEFINE VARIABLE data DENGAN TYPE List AGAR DAPAT MENAMPUNG COLLECTION / ARRAY

Future getData() async {
  // MEMINTA DATA KE SERVER DENGAN KETENTUAN YANG DI ACCEPT ADALAH JSON
  var res = await http
      .get(Uri.encodeFull(url), headers: {'accept': 'application/json'});

  // setState(() {
  //RESPONSE YANG DIDAPATKAN DARI API TERSEBUT DI DECODE
  var content = json.decode(res.body);
  //KEMUDIAN DATANYA DISIMPAN KE DALAM VARIABLE data,
  //DIMANA SECARA SPESIFIK YANG INGIN KITA AMBIL ADALAH ISI DARI KEY hasil
  data = content['hasil'];
  // });
  return 'success!';
}
