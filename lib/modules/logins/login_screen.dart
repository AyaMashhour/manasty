import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manasty/shared/component/component.dart';

import 'loginscreen.dart';
import 'signup.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF000033),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 400,

              child: Image.asset('assets/logo.jpg'),
            ),
            Text(
              'Watch Your Courses',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: 70,
            ),
            featuredButton(

                text: 'Login',
                function: () {
                  navigateTo(context, LoginInScreen());
                }),
            SizedBox(
              height: 35,
            ),
            normalButton(
              widget: TextButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    navigateTo(context, SignUpScreen());
                  }),
            ),
          ],
        ));
  }
}
