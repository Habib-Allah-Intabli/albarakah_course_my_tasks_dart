// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginModel {
  String username;
  String passowrd;
  LoginModel({required this.username, required this.passowrd});

  LoginModel copyWith({String? username, String? passowrd}) {
    return LoginModel(
      username: username ?? this.username,
      passowrd: passowrd ?? this.passowrd,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'username': username, 'passowrd': passowrd};
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      username: map['username'] as String,
      passowrd: map['passowrd'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginModel(username: $username, passowrd: $passowrd)';

  @override
  bool operator ==(covariant LoginModel other) {
    if (identical(this, other)) return true;

    return other.username == username && other.passowrd == passowrd;
  }

  @override
  int get hashCode => username.hashCode ^ passowrd.hashCode;
}
