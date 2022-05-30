import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasty/layout/layout_screen.dart';
import 'package:manasty/shared/component/component.dart';

import 'List_of_msg.dart';
import '../home/home_screen.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
           //   textBaseline: TextBaseline.ideographic,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200]),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Center(
                        child: Icon(
                      Icons.arrow_back_outlined,
                      size: 35,
                      color: Colors.black,
                    )),
                    padding: EdgeInsets.only(bottom: 3),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Text('Message',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600))
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 50,
                      width: 280,
                      padding: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[200]),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search Anything',
                            hintStyle: TextStyle(),
                            icon: Icon(Icons.search),
                            border: InputBorder.none),
                      )),
                  SizedBox(height: 10),
                  Text('Active',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height:12,
                  ),
                  Container(
              height: 45,

                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                            width: 45,
                          height: 45,
                          clipBehavior: Clip.antiAliasWithSaveLayer,

                          decoration: BoxDecoration(
borderRadius: BorderRadius.circular(25),
                              image:DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                'assets/logo.jpg',



                              ),),
                              border: Border.all(
                                  width: 2, color: Colors.indigo[700],)),
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 14.0,
                            ),
                        itemCount: 10),
                  ),
                  SizedBox(
                    height:10,
                  ),
               
                 Text('Message',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1)),



                  ListOfMessage()


                ],
              ),
            ),
          ],
        ),
      );

  }
}
