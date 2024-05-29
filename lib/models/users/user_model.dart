import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String avatar;
  String email;

  UserModel({required this.avatar, required this.email});

  factory UserModel.fromJson(Map<String, dynamic> data) {
    return _$UserModelFromJson(data);
  }

  Map<String, dynamic> toJson() {
    return _$UserModelToJson(this);
  }
}
