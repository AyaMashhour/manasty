
import 'package:flutter/material.dart';
import 'package:manasty/modules/home/component_home.dart';

import 'component_course.dart';

class CoursesPlayScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                //   textBaseline: TextBaseline.ideographic,
                children: [
                  Container(
                   // margin: EdgeInsets.only(left: 30),
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
                  Text('My Courses',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: 30),
          Container(
              height: 160.0,
              width:double.infinity,
              padding: EdgeInsets.only(
                  left: 20.0, right: 10.0, top: 20.0, bottom: 10.0),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '5 courses you have ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('8 Lesson',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                  Text(
                    '16 Lesson',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    width: 150,
                    height: 50,
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

                ],
              )),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Your Courses',
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
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
                    children: List.generate(10,(index)=>buildGridOfPlayingCourses(context))),
              )
            ],
          ),
        )
      ),
    );
  }
}
