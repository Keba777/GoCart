import 'package:gocart/features/authentication/domain/entities/user_entity.dart';

class UserModel {
  final String id;
  final String phone;
  final String password;
  final String? token;

  UserModel(
      {required this.id,
      required this.phone,
      required this.password,
      required this.token});

  factory UserModel.fromRegisterJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['data']['id'],
        phone: json['data']['phone'],
        password: json['data']['password'],
        token: null);
  }

  factory UserModel.fromLoginJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['data']['users']['id'],
        phone: json['data']['users']['phone'],
        password: json['data']['users']['password'],
        token: json['data']['token']);
  }

  User toEntity() {
    return User(id: id, phone: phone, password: password);
  }

  Map<String, dynamic> toRegisterJson() {
    return {
      'phone': phone,
      'password': password,
    };
  }

  Map<String, dynamic> toLoginJson() {
    return {
      'phone': phone,
      'password': password,
    };
  }
}
