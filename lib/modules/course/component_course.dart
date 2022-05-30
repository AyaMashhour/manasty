import 'package:flutter/material.dart';
import 'package:manasty/shared/component/component.dart';

import 'course_details.dart';

Widget buildGridOfPlayingCourses(context) => InkWell(
  onTap: (){navigateTo(context, CourseDetail());},
  child:   Container(





    decoration: BoxDecoration(

        color: Colors.white30,

        borderRadius: BorderRadius.circular(22.0)),

    child: Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      mainAxisAlignment: MainAxisAlignment.start,

      children: [

        Image(

          image: NetworkImage('https://www.senthilcollegeedu.com/css/images/courses.jpg'),



          width: double.infinity,

        ),
        SizedBox(height: 8,),

        Text(

          'Embeded System ',

          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700,color: Colors.black),



        ),

        Container(

          width: 150,

          height: 30,

          child: SliderTheme(

            data: SliderThemeData(

                thumbShape: RoundSliderThumbShape(

                  enabledThumbRadius: 10,

                ),

                trackHeight: 15.5,

                overlayShape: RoundSliderOverlayShape(

                  overlayRadius: 11,

                )),

            child: Slider(

              min: 1.0,

              max: 10.0,

              inactiveColor: Colors.white.withOpacity(0.6),

              activeColor: Colors.deepOrangeAccent,

              value: 5,

              onChanged: (value) {},

            ),

          ),

        ),



        Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [

            Text(

              '30 Slides',

              style: TextStyle(

                fontSize: 14.0,

                color: Colors.grey[500],

              ),

            ),  Text(

              '30 Slides',

              style: TextStyle(

                fontSize: 14.0,

                color: Colors.grey[500],

              ),

            ),

          ],

        )

      ],

    ),

  ),
);