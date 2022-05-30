
import 'package:flutter/material.dart';
import 'package:manasty/shared/component/component.dart';

import 'loginscreen.dart';

class SignUpScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TextEditingController fullName=TextEditingController();
    TextEditingController nationalId =TextEditingController();
    TextEditingController universityNumber =TextEditingController();

    return Scaffold(
        backgroundColor: Color(0xFF000033),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 300, child: Image.asset("assets/logo.jpg")),
              Text(
                'Create Account',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),

              Center(
                  child: Container(
                      width: 310,
                      child: defaultTextFromField(
                          validatorText: 'You should complete this !',
                          type: TextInputType.name,
                          controller: fullName,
                          labelText: 'Full Name'))),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      width: 310,
                      child: defaultTextFromField(
                          validatorText: 'You should complete this !',
                          type: TextInputType.number,
                          controller: nationalId,
                          labelText: 'National ID'))),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      width: 310,
                      child: defaultTextFromField(
                          validatorText: 'You should complete this !',
                          type: TextInputType.number,
                          controller: universityNumber,
                          labelText: 'University Number'))),
              SizedBox(
                height: 25,
              ),


              featuredButton(
                text: 'Sign Up',

              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Row(
               // crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),  color: Color(0xff001187),),

                      child: IconButton(icon: Icon(Icons.extension,color: Colors.white,),onPressed: (){print('aya');},),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),  color: Color(0xff001187),),

                      child: IconButton(icon: Icon(Icons.extension,color: Colors.white,),onPressed: (){print('aya');},),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),  color: Color(0xff001187),),

                      child: IconButton(icon: Icon(Icons.extension,color: Colors.white,),onPressed: (){print('aya');},),
                    ),

                  ],
                ),
              )
            ],
          ),
        ));
  }

}
