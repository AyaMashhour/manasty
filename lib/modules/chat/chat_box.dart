
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TextEditingController sendMyMessage=TextEditingController();
    return Scaffold(

     body: SingleChildScrollView(
       physics: BouncingScrollPhysics(),
       child: Column(

         children: [
           SizedBox(height: 70),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.end,
             //   textBaseline: TextBaseline.ideographic,
             children: [
               Container(
                 margin: EdgeInsets.only(left: 12),
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
                 width:5,
               ),
               Container(
                 width: 45,
                 height: 45,
                 clipBehavior: Clip.antiAliasWithSaveLayer,

                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25),
                     image:DecorationImage(
                       fit: BoxFit.cover,
                       image: AssetImage(
                         'assets/logo.jpg',



                       ),),
                     border: Border.all(
                       width: 2, color: Colors.indigo[700],)),
               ),
               SizedBox(
                 width:10,
               ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               //  ,
               //  mainAxisAlignment: MainAxisAlignment.,
                 children: [

                   Text('Hnana Ahmed',
                       style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                   SizedBox(
                     height:4,
                   ),
                   Text('Online',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.blue[600])),
                 ],
        ),
               Spacer(),
               IconButton(icon: Icon(Icons.add_call,color: Colors.blue[600],size: 25,), onPressed: (){}),
               IconButton(icon: Icon(Icons.video_call,color: Colors.blue[600],size: 25,), onPressed: (){})
             ],
           ),
           SizedBox(height: 60),
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: Align(
               alignment: Alignment.topLeft,
               child: Row(children: [
                 Container(
                   width: 45,
                   height: 45,
                   clipBehavior: Clip.antiAliasWithSaveLayer,

                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25),
                       image:DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage(
                           'assets/logo.jpg',



                         ),),
                       border: Border.all(
                         width: 2, color: Colors.indigo[700],)),
                 ),
                 SizedBox(
                   width:5,
                 ),
                 Container(

                  padding: EdgeInsets.all(10.0),

                   decoration: BoxDecoration(
                       borderRadius: BorderRadiusDirectional.only(
                           topEnd: Radius.circular(10),
                           topStart: Radius.circular(10),
                         bottomEnd: Radius.circular(10),


                       ),color: Colors.grey[200] ),
                   child: Center(child: Text('mdskjvisdvkld',maxLines: 100,)),
                 ),

               ],),
             ),
           ),
       Padding(
         padding: const EdgeInsets.only(left:18.0,right: 18.0),
         child:
             Align(
               alignment: Alignment.topRight,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [

                   Container(
                       padding: EdgeInsets.all(9.0),
                       decoration: BoxDecoration(
                           color: Colors.grey[300],
                           borderRadius: BorderRadiusDirectional.only(
                               topEnd: Radius.circular(10),
                               topStart: Radius.circular(10),
                               bottomStart: Radius.circular(10))),
                       child: Text('kdnfkdsnf'),),
                   SizedBox(width: 6,),
                   Container(
                     width: 45,
                     height: 45,
                     clipBehavior: Clip.antiAliasWithSaveLayer,

                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         image:DecorationImage(
                           fit: BoxFit.cover,
                           image: AssetImage(
                             'assets/logo.jpg',



                           ),),
                         border: Border.all(
                           width: 2, color: Colors.indigo[700],)),
                   ),
                 ],
               ),
             ),


       ),
           SizedBox(height: 50,),
           Padding(
             padding: const EdgeInsets.only(left:3.0,right: 3.0),
             child: Row(
               children: [
                 Container(
                   height: 40.0,
                   width:300,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.grey),
                     borderRadius: BorderRadius.circular(13.0),
                   ),
                   clipBehavior: Clip.antiAliasWithSaveLayer,
                   child: TextFormField(
                     controller: sendMyMessage,
                     decoration: InputDecoration(

                       border: InputBorder.none,
                       hintText: '  Type your massage here....',
                       hintStyle: TextStyle(
                         fontSize: 15.0,
                       ),
                     ),
                     maxLines: 1,
                   ),
                 ),
                 SizedBox(width: 2,),
                 Container(
 padding: EdgeInsets.only(left: 8),
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                       color: Colors.indigo),

                   child: IconButton(
                    icon:Icon( Icons.send,
                      color: Colors.white,),onPressed: (){},
                   ),
                 ),
               ],
             ),
           )
         ],
       ),
     ),
    );
  }
}
