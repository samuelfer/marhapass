import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:marhapass/src/models/user_model.dart';

class APIService {
  static var client = http.Client();
  static String apiURL = "http://localhost:8080";

  static Future<UserResponseModel> registerUser(
    UserModel userModel,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
    };

    var response = await client.post(Uri.parse("$apiURL/usuarios"),
        headers: requestHeaders, body: jsonEncode(userModel));

    return userResponseFromJson(response.body);
  }
}
