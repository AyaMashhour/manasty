import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasty/modules/course/course_details.dart';
import 'package:manasty/shared/component/component.dart';

Widget SearchingList(context)=> Container(
  height: 60,
  width: double.infinity,

  decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)),
  padding: EdgeInsets.only(top:10,left: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Container(
        height: 40,
        width: 40,

        decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/logo.jpg',) ),
            borderRadius: BorderRadius.circular(10)),

        // child: Image(image: AssetImage('assets/logo.jpg',)))
      ),
      SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(' Neural NetWork',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600)),
          SizedBox(height: 6,),
          Text(' 15 lesson',
              style: TextStyle(
                  fontSize: 10, fontWeight: FontWeight.w600,color: Colors.grey)),
        ],
      ),
      Spacer(),

      IconButton(icon: Icon(Icons.arrow_forward_ios_rounded), onPressed: ()
      {
        navigateTo(context,CourseDetail());
      })
    ],
  ),
);