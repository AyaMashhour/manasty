import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasty/model/courses_model.dart';
import 'package:manasty/modules/course/courses_play.dart';
import 'package:manasty/shared/component/component.dart';
import 'package:manasty/modules/home/component_home.dart';

import '../all_courses.dart';

Widget HomeBody(context) => SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 15,
          right: 15
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'Ongoing Course',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    navigateTo(context, CoursesPlayScreen());
                  },
                ),
                Spacer(),
                TextButton(
                  child: Text(
                    'view all',
                    style: TextStyle(color: Colors.black45),
                  ),
                  onPressed: () {
                    navigateTo(context, AllCourses());
                  },
                ),
              ],
            ),
            Container(
              height: 145,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildListCourses(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 25.0,
                      ),
                  itemCount: 5),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Choice your Courses',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'view all',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.indigo),
                  child: Center(
                      child: InkWell(
                    child: Text(
                      'All',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                        onTap: (){
                      print('xkjks');
                        },
                  )),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.grey[300]),
                  child: Center(
                      child: InkWell(
                        child: Text(
                          'CS',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        onTap: (){
                          print('xkjks');
                        },
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(

              color: Colors.grey[200],
              child: GridView.count(

                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 7,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.1 / 1.0,
                  children: List.generate(10,(index)=>buildGridOfCourses())),
            )
          ],
        ),
      ),
    );
