import 'dart:convert';

class UserModel {
  String nome;
  String email;
  String celular;
  String cpf;
  String senha;

  UserModel({
    required this.nome,
    required this.email,
    required this.senha,
    required this.cpf,
    required this.celular,
  });

  // UserModel.fromJson(Map<String, dynamic> json) {
  //   nome = json['nome'];
  //   emailId = json['email'];
  //   senha = json['senha'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['nome'] = this.nome;
  //   data['email'] = this.emailId;
  //   data['senha'] = this.senha;

  //   return data;
  // }
}

UserResponseModel userResponseFromJson(String str) =>
    UserResponseModel.fromJson(json.decode(str));

class UserResponseModel {
  int? code;
  String? mensagem;

  UserResponseModel({required this.code, required this.mensagem});

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    mensagem = json['mensagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['code'] = this.code;
    data['mensagem'] = this.mensagem;

    return data;
  }
}
