import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_api/binding/user_binding.dart';
import 'package:testing_api/view/myHomepage.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
    initialBinding: UserBinding(),
  ));
}
