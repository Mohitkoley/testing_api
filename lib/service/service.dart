import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:testing_api/model/user.dart';
import 'package:http/http.dart' as http;

class Service extends GetConnect {
  getUser() async {
    try {
      var response = await http
          .get(Uri.parse("https://mohitkoley.github.io/userjson/users.json"))
          .timeout(Duration(seconds: 5), onTimeout: () {
        throw TimeoutException("connection Timeout");
      });
      if (response.statusCode == 200) {
        //var body = response.body;
        return User.fromJson(json.decode(response.body));
      } else {
        return null;
      }
    } on TimeoutException catch (e) {
      print("response timeout");
    }
  }
}
