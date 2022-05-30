import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasty/modules/search/search_details.dart';
import 'package:manasty/shared/component/component.dart';

import '../course/course_details.dart';
import '../course/courses_play.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        child: Container(

          child: Padding(
              padding: const EdgeInsets.all(18.0),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    Text(' Search',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.w600))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Container(
                      width: 290,
                      height: 45,
                      padding: EdgeInsets.only(top: 3),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0)),
                      child: TextFormField(
                        cursorColor: Colors.indigo,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'search anything!',
                            hintStyle: TextStyle(color: Colors.black38),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20,
                            )),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Recent Search',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),

                Container(
                  height: 400,
                  width:double.infinity,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => SearchingList(context),
                      separatorBuilder: (context, index) => SizedBox(height: 15),
                      itemCount: 15),
                )
              ])),
        ));
  }
}
