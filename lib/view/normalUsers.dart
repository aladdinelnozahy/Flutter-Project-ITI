import 'package:flutter/material.dart';
import 'package:flutter_app/model/model.dart';

class NormalUsers extends StatelessWidget {
  NormalUsers({Key? key}) : super(key: key);

  List<NormalUserModel> users = [
    NormalUserModel(id: 1, userName: "Aladdin", phone: "01148223413"),
    NormalUserModel(id: 2, userName: "Bassel", phone: "0223413"),
    NormalUserModel(id: 3, userName: "Mostafa", phone: "0123"),
    NormalUserModel(id: 4, userName: "Hend", phone: "01148"),
    NormalUserModel(id: 5, userName: "Judy", phone: "148241"),
    NormalUserModel(id: 1, userName: "Aladdin", phone: "01148223413"),
    NormalUserModel(id: 2, userName: "Bassel", phone: "0223413"),
    NormalUserModel(id: 3, userName: "Mostafa", phone: "0123"),
    NormalUserModel(id: 4, userName: "Hend", phone: "01148"),
    NormalUserModel(id: 5, userName: "Judy", phone: "148241"),
    NormalUserModel(id: 1, userName: "Aladdin", phone: "01148223413"),
    NormalUserModel(id: 2, userName: "Bassel", phone: "0223413"),
    NormalUserModel(id: 3, userName: "Mostafa", phone: "0123"),
    NormalUserModel(id: 4, userName: "Hend", phone: "01148"),
    NormalUserModel(id: 5, userName: "Judy", phone: "148241"),
  ];
  // This widget is the root of your application.
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
            itemCount: users.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 5,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  CircleAvatar(
                    child: Text(users[index].id.toString()),
                    backgroundColor: Colors.teal[700],
                    radius: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(child: Text(users[index].userName)),
                  Text(users[index].phone)
                ],
              );
            },
          ),
        ));
  }
}
