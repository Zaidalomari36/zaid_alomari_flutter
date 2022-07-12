import 'package:exr/screens/studscreen.dart';
import 'package:flutter/material.dart';

class StudProgram extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
children: [
  Container(
    margin: EdgeInsets.only(top: 20.0,left: 160),
    child: Text("البرنامج الدراسي",style: TextStyle(
        fontSize: 30,
        color: Color(0xff04854c),
        fontWeight: FontWeight.bold
    ),),
  ),
  Container(
    margin: EdgeInsets.only(top: 20.0,right: 20,left: 20),
    child: Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width:120,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
        SizedBox(width: 10,),
        Text("المادة الاولى",style: TextStyle(
            fontSize: 23,
            color: Color(0xff04854c),
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Container(
          width:120 ,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": اسم المادة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.course1,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),
      ],),),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": الايام ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.days1,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": موعد المحاضرة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.time1,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": القاعات ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.hall1,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),

  SizedBox(height: 30,),

  Container(
    margin: EdgeInsets.only(top: 20.0,right: 20,left: 20),
    child: Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width:110,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
        SizedBox(width: 10,),
        Text("المادة الثانية",style: TextStyle(
            fontSize: 23,
            color: Color(0xff04854c),
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Container(
          width:110 ,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": اسم المادة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.course2,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),
      ],),),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": الايام ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.days2,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": موعد المحاضرة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.time2,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": القاعات ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.hall2,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),

  SizedBox(height: 30,),

  Container(
    margin: EdgeInsets.only(top: 20.0,right: 20,left: 20),
    child: Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width:110,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
        SizedBox(width: 10,),
        Text("المادة الثالثة",style: TextStyle(
            fontSize: 23,
            color:Color(0xff04854c),
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Container(
          width:110 ,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": اسم المادة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.course3,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),
      ],),),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": الايام ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.days3,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": موعد المحاضرة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.time3,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": القاعات ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.hall3,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),

  SizedBox(height: 30,),

  Container(
    margin: EdgeInsets.only(top: 20.0,right: 20,left: 20),
    child: Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width:110,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
        SizedBox(width: 10,),
        Text("المادة الرابعة",style: TextStyle(
            fontSize: 23,
            color: Color(0xff04854c),
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Container(
          width:110 ,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": اسم المادة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.course4,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),
      ],),),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": الايام ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.days4,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": موعد المحاضرة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.time4,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": القاعات ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.hall4,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),

  SizedBox(height: 30,),

  Container(
    margin: EdgeInsets.only(top: 20.0,right: 20,left: 20),
    child: Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width:100,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
        SizedBox(width: 10,),
        Text("المادة الخامسة",style: TextStyle(
            fontSize: 23,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Container(
          width:110 ,
          child: Divider(
            color: Color(0xff04854c),
            thickness: 2,
          ),
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": اسم المادة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.course5,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),
      ],),),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": الايام ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.days5,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": موعد المحاضرة ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.time5,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 10,right: 30),
    child: Row(textDirection: TextDirection.rtl,
      children: [
        Text(": القاعات ",style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text(StdScreen.hall5,style: TextStyle(
            fontSize: 22,
            color: Color(0xffb72238),
            fontWeight: FontWeight.bold
        ),),

      ],
    ),
  ),

  SizedBox(height: 50,),
],
      ),
    );
  }
}
