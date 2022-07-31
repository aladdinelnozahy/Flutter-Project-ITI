import 'package:flutter/material.dart';
import 'package:flutter_app/view/component.dart';

class Massenger extends StatelessWidget {
  Massenger({Key? key}) : super(key: key);
  List<ActiveUser> active = [
    // need to create type
    ActiveUser(name: "name 222222222222222"),
    ActiveUser(name: "name 333333333333333"),
    ActiveUser(name: "name 333333333333333"),
    ActiveUser(name: "name 333333333333333"),
    ActiveUser(name: "name 333333333333333"),
    ActiveUser(name: "name 333333333333333"),
    ActiveUser(name: "name 333333333333333"),
    ActiveUser(name: "name 333333333333333"),
    ActiveUser(name: "name 333333333333333"),
  ];
  List<ChatUser> chat = [
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin "),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin ", isRead: true),
    ChatUser(name: "aladdin "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.lightGreen,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 16,
                ),
                radius: 16,
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Icon(Icons.camera_alt_outlined, size: 16),
                radius: 40,
              ))
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * (2 / 100),
              vertical: 15,
            ), // from left to right -> start end
            child: Container(
                width: double.infinity,
                height: 40,
                // color: Colors.black45,                              //can't use with decoration
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black45),
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Icon(Icons.search),
                    Text("search")
                  ],
                )),
          ),
          Container(
              height: 80,
              child: ListView.builder(
                itemCount: active.length,
                itemBuilder: (BuildContext context, int index) {
                  return active[index];
                },
                scrollDirection: Axis.horizontal,
              )),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),

                    itemCount: chat.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.white,
                          ),
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return chat[index];
                    },
                  )
                  )
                  )
        ],
      ),
      // drawer: Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width*0.7,
      //   color: Color.fromARGB(255, 18, 93, 92),
      //   child: Text("A7la messa")
      // ),
    );
  }
}
