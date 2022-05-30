import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
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
                          Text(' Lesson',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600))
                        ],
                      ),
                    ]))));
  }
}
