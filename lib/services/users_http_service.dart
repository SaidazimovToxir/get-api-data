import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:lesson46/models/users/user_model.dart';

class UsersHttpService {
  Future<List<UserModel>> getUsers() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/users");
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final body = response.body;
        final List<dynamic> jsonData = jsonDecode(body);

        List<UserModel> loadedUsers = jsonData
            .map((item) => UserModel.fromJson(item as Map<String, dynamic>))
            .toList();

        return loadedUsers;
      } else {
        throw Exception("Failed to load products");
      }
    } catch (e) {
      print(e);
    }
    return [];
  }
}

// void main(List<String> args) {
//   UsersHttpService usersHttpService = UsersHttpService();
//   print(usersHttpService.getUsers());
// }
