import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manasty/model/boarding_model.dart';

void navigateAndFinish(context, Widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => Widget),
        (Route<dynamic> route) => false,
  );
}



Widget defaultTextBottom
    ({String text, Function function}) =>
    TextButton(
      onPressed: function,
      child: Text(text.toUpperCase(), style: TextStyle(color: Colors.white)),

    );

Widget buildBoardingItem(BoardingModel model) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 400,
            child: Center(child: Image(image: AssetImage('${model.image}')))),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Text(
              '${model.textTitle}', style: TextStyle(color: Colors.black)),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Text('${model.textBody}'),
        ),
      ],
    );

Color defaultColor= Colors.white;

Widget defaultTextFromField({
  TextEditingController controller,
   String validatorText,
  IconData icon,
 String labelText,
  TextInputType type,

  IconData suffixIcon,
}) =>
    TextFormField(


        controller: controller,
        // ignore: missing_return
        validator: (String value) {
          if (value.isEmpty) {
            return validatorText;
          }
        },

        style: TextStyle(color: Colors.white,),
        cursorColor: Colors.grey,


        keyboardType: type,
       textAlign: TextAlign.start,
        decoration: InputDecoration(

          labelStyle: TextStyle(color: Colors.grey[300],letterSpacing: 1),
          suffixIcon: Padding(
            padding:  EdgeInsets.only(right: 30,),
            child: Icon(suffixIcon,color: Colors.grey,),
          ),
          prefixIcon: Icon(icon),
          labelText: labelText,

          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
                color: Colors.indigo[600],
                width: 2.5
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.indigo,
              width: 2.5,
            ),
          ),
        )

    );


void navigateTo(context, Widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));
}

Widget featuredButton({String text,Function function})=> Container(
  height: 60,
  width: 310,

  decoration: BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
      image: AssetImage('assets/color.png'),
    ),
    // gradient: LinearGradient(colors: [
    //
    //   // Color(0xff0055ff),
    //   Color(0xff0055bb),
    //  // Colors.indigo[600],
    //   Color(0xff001187),
    //   Color(0xff002255),
    // ], stops: [
    //   0.3,
    //   // 0.3,
    //   0.5,
    //   0.1
    // ], begin: Alignment(-5, 0), end: Alignment(1, 0)),

    borderRadius: BorderRadius.circular(25),
    color: Colors.grey[600],
  ),
  child: TextButton(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w500,
            color: Colors.white),
      ),
      onPressed: function
));

Widget normalButton({Function function,Widget widget})=>Container(
  height: 60,
  width: 310,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: Colors.grey[600])
  ),
  child:widget);
