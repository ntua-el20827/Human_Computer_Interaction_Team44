import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());

class Users {
  final int? userId;
  final String username;
  final String password;
  final Map<String, dynamic> userinfo;
  final int points;

  Users({
    this.userId,
    required this.username,
    required this.password,
    this.userinfo = const {},
    this.points = 0,
  });

  // Convert a Users object into a Map
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'username': username,
      'password': password,
      'userinfo': userinfo.toString(), // Convert Map to String representation
      'points': points,
    };
  }

  // Create a Users object from a Map
  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      userId: map['userId'],
      username: map['username'],
      password: map['password'],
      userinfo: map['userinfo'] != null
          ? Map<String, dynamic>.from(json.decode(map['userinfo']))
          : {},
      points: map['points'],
    );
  }

  // Copy method to create a new Users object with some changes
  Users copyWith({
    int? userId,
    String? username,
    String? password,
    Map<String, dynamic>? userinfo,
    int? points,
  }) {
    return Users(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      password: password ?? this.password,
      userinfo: userinfo ?? this.userinfo,
      points: points ?? this.points,
    );
  }
}
