import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasty/shared/component/component.dart';

import 'chat_box.dart';

Widget ListOfMessage()=> Container(
  height: 600,

  child: ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => InkWell(
        onTap: (){
          navigateTo(context,ChatBox() );
        },
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
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
            SizedBox(width: 15,),
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [ Text('Hana Ahmed',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
                SizedBox(
                  height:3,
                ),
                Text(' Ahkfnboisfjg kgadpmed',

                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(

                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,)),
              ],
            )
          ],
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 9.0,
      ),
      itemCount: 15),
);