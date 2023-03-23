
import 'package:json_annotation/json_annotation.dart';

import '../role/role_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  String name;
  int age;
  String address;
  Role role;

  User(this.name, this.age, this.address, this.role);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}