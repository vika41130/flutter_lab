// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['name'] as String,
      json['age'] as int,
      json['address'] as String,
      Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'address': instance.address,
      'role': instance.role,
    };
