import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// activeUser({required String name}) {
//   return
// }
class ActiveUser extends StatelessWidget {
  ActiveUser({Key? key, required this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        // solve text row proplem
        width: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 6,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 5,
                  ),
                ],
              )
            ]),
            SizedBox(
              height: 5,
            ),
            Text(
              name != null ? name : "",
              maxLines: 2,
              overflow: TextOverflow
                  .ellipsis, // solve text proplem for  ... ,and line limit
            )
          ],
        ),
      ),
    ));
  }
}

// chatUser(String name, {bool isRead = false}) =>
class ChatUser extends StatelessWidget {
  const ChatUser({Key? key, required this.name, this.isRead=false})
  :super(key: key);
  final String name;
  final bool isRead;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(alignment: AlignmentDirectional.bottomEnd, children: [
            CircleAvatar(
              backgroundColor: Colors.lightBlueAccent,
              radius: 25,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 6,
                ),
                CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  radius: 5,
                ),
              ],
            )
          ]),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "data data data data data data  data data data  data data data  data data data  data data data  data data data  data data data  data data data  data data data data data data data data data ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight:
                              isRead ? FontWeight.normal : FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                  Text(
                    "8:00PM",
                    style: TextStyle(color: Colors.white),
                  ),
                  isRead
                      ? Icon(Icons.check, color: Colors.white)
                      : Icon(Icons.notifications, color: Colors.white)
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
