// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      dataNascimento: json['dataNascimento'] as String?,
      phone: json['phone'] as String?,
      cpf: json['cpf'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      id: json['id'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'cpf': instance.cpf,
      'dataNascimento': instance.dataNascimento,
      'phone': instance.phone,
      'password': instance.password,
      'id': instance.id,
      'token': instance.token,
    };
