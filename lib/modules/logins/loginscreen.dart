import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasty/layout/layout_screen.dart';
import 'package:manasty/shared/component/component.dart';

class LoginInScreen extends StatelessWidget {
  TextEditingController nationalId = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF000033),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 300, child: Image.asset("assets/logo.jpg")),
              Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Watch Your Courses ',
                  style: TextStyle(color: Colors.white70)),
              SizedBox(
                height: 25,
              ),
              Container(
                  width: 310,
                  child: defaultTextFromField(
                      validatorText: 'You should complete this !',
                      type: TextInputType.number,
                      controller: nationalId,
                      labelText: 'National ID')),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 310,

                child: defaultTextFromField(
                    suffixIcon: Icons.remove_red_eye_outlined,
                    validatorText: 'You should complete this !',
                    type: TextInputType.visiblePassword,
                    controller: password,
                    labelText: 'Password'),
              ),
              SizedBox(
                height: 10,
              ),


              GestureDetector(
                child: Align(
                  // alignment: Alignment.r,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: Text(
                      'Forget Password!',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green[900],

                        decoration: TextDecoration.underline,
                        //decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  print('forget the password');
                },
              ),
              SizedBox(
                height: 30,
              ),
              featuredButton(
                text: 'Login',
                function: ()
                {
                  navigateTo(context,LayoutScreen());

                }
              )
            ],
          ),
        ));
  }
}
