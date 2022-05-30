import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manasty/model/courses_model.dart';
import 'package:manasty/modules/course/course_details.dart';
import 'package:manasty/shared/component/component.dart';

Widget buildListCourses() => Stack(
      // alignment: Alignment.center,
      children: [
        Container(
            height: 180.0,
            width: 235.0,
            padding: EdgeInsets.only(
                left: 15.0, right: 0.0, top: 15.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(25.0)),
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image(
                        image: NetworkImage(
                            'https://www.senthilcollegeedu.com/css/images/courses.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Embeded System',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),

                SliderTheme(
                  data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 10,
                      ),
                      trackHeight: 13.5,
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 25,
                      )),
                  child: Slider(
                    min: 1.0,
                    max: 100.0,
                    inactiveColor: Colors.white.withOpacity(0.6),
                    activeColor: Colors.deepOrangeAccent,
                    value: 52,
                    onChanged: (value) {},
                  ),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,//mainAxisAlignment: MainAxisAlignment.spaceBetween

                  children: [
                    Text('8 Lesson',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      '16 Lesson',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer(),
                // SizedBox(height: 30,),
                Text(
                  '16 Vidoes _ 15 Slides_10 Shit _ 5 Quiz',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                )
              ],
            ))
      ],
    );

Widget buildGridOfCourses() => Container(


  decoration: BoxDecoration(
    color: Colors.white24,
    borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Image(
                image: NetworkImage('https://www.senthilcollegeedu.com/css/images/courses.jpg'),
                height: 100.0,
                width: double.infinity,
              ),

            ],
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Text(
                      '20 Lesson',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
                    ),
                 Spacer(),

                      Text(
                        '30 Slides',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[500],
                          ),
                      ),


                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );


