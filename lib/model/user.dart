// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.username,
    required this.email,
    required this.urlAvatar,
  });

  String username;
  final String urlAvatar;
  final String email;

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json["username"],
        email: json["email"],
        urlAvatar: json["urlAvatar"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "urlAvatar": urlAvatar,
      };
}
