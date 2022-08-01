import 'package:dio/dio.dart';
import 'package:flutter_app/model/userModel.dart';

class UserService {
  String baseurl = "https://jsonplaceholder.typicode.com/";
  String userLink = "https://jsonplaceholder.typicode.com/users";
  String albumLink = "https://jsonplaceholder.typicode.com/albums";
  String postLink = "https://jsonplaceholder.typicode.com/posts";
  String commentLink = "https://jsonplaceholder.typicode.com/comments";
  String photoLink = "https://jsonplaceholder.typicode.com/photos";
  String todoLink = "https://jsonplaceholder.typicode.com/todos";

  // List<UsersModel> user = [];
  Future<List<UsersModel>> getUsersData() async {
    List<UsersModel> users = [];

    try {
      var response = await Dio().get("${baseurl}/${userLink}");
      response.data.forEach((elem) {
        UsersModel user = UsersModel.fromJson(elem);
        users.add(user);
      });
    } catch (e) {
      print(e.toString());
    }
    return users;
  }
}
