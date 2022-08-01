import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/userModel.dart';
import 'package:flutter_app/service/userService.dart';

class Users extends StatefulWidget {
  Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List<UsersModel> users = [];
  bool isLoad = false;
  getData() async {
    users = await UserService().getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: Text("Users"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            itemCount: 1,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 5,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  CircleAvatar(
                    child: Text("ccccccccccc"),
                    backgroundColor: Colors.teal[700],
                    radius: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(child: Text("aaaaaaaaaaaa")),
                  Text("bbbbbbbbbbb")
                ],
              );
            },
          ),
        ));
  }
}
