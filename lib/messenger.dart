import 'package:flutter/material.dart';

class Massenger extends StatelessWidget {
  const Massenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(radius: 18,backgroundColor: Colors.lightGreen,),
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
            onPressed: (){},
             icon: CircleAvatar(
              child: Icon(
                Icons.camera_alt_outlined,
                size:16,
              ),
              radius: 16,
             )),

             IconButton(onPressed: (){},
              icon: CircleAvatar(
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 16
                ),
                radius: 40,
              ))
            ],

          

      ),

      body:Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width*(2/100),
              vertical: 15,
            ),     // from left to right -> start end 
            child: Container(
              width: double.infinity,
              height: 40,
              // color: Colors.black45,                              //can't use with decoration
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black45
              ) ,
              child:Row(
                children: [
                  SizedBox(width: 40),
                  Icon(Icons.search),
                  Text("search")
                ],
              )
            ),
          ),
          Container(
            height: 80,
            child: Row(
            children: [
              Container(
                width: 70,
                child: Column(
                  children: [
                   CircleAvatar(),
                   SizedBox(height: 5,),
                   Text("Data Data Data Data Data Data Data Data Data Data Data Data ",maxLines: 2,overflow: TextOverflow.ellipsis,)

                  ],
                ),
              )
            ],
        ),
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