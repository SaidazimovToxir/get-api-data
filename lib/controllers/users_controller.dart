import 'package:lesson46/models/users/user_model.dart';
import 'package:lesson46/services/users_http_service.dart';

class UsersController {
  UsersHttpService usersHttpService = UsersHttpService();

  Future<List<UserModel>> getUsers() async {
    List<UserModel> users = await usersHttpService.getUsers();
    return users;
  }
}