import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? name;
  String? email;
  String? cpf;
  String? dataNascimento;
  String? phone;
  String? password;
  String? id;
  String? token;

  UserModel({
    this.dataNascimento,
    this.phone,
    this.cpf,
    this.email,
    this.name,
    this.password,
    this.id,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, cpf: $cpf, dataNascimento: $dataNascimento, phone: $phone, password: $password, id: $id, token: $token)';
  }
}
