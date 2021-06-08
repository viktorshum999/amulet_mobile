import 'dart:convert';

import 'package:http/http.dart' as http;

import 'user.dart';

final String host = '10.0.2.2';
final int port = 8080;

Future<bool> register(User user) async {
  var url = Uri(scheme: 'http',
      host: host,
      port: port,
      path: '/user');

  final response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(user.toJson()));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    bool resp = response.body.toLowerCase() == 'true';
    if (resp)
      return true;

    return false;
  } else
    throw Exception('Failed to load server data');
}

Future<User> login(String phone, String password) async{
  var url = Uri(scheme: 'http',
      host: host,
      port: port,
      path: '/user/login');

  final response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"phone": phone, "password": password}));
  if (response.statusCode == 200) {
    print(response.body);
    if(response.body == "")
      return null;
    return User.fromJson(jsonDecode(response.body));

  } else if(response.statusCode == 400)
    throw Exception('Bad data');
    else throw Exception('Failed to load server data');
}
