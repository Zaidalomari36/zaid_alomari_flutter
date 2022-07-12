import 'package:exr/screens/loginscreen.dart';
import 'package:exr/screens/result.dart';
import 'package:exr/screens/studscreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
  children: [
    Container(
      margin: EdgeInsets.only(top: 20.0,left: 160),
      child: Text("معلومات الطالب",style: TextStyle(
        fontSize: 30,
        color: Color(0xff04854c),
        fontWeight: FontWeight.bold
      ),),
    ),
    Container(
      margin: EdgeInsets.only(top: 20.0,right: 80),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(": اسم الطالب",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text("${StdScreen.arabName}",style: TextStyle(
              fontSize: 23,
              color: Color(0xffb72238),
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 20,)
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(": الاسم بالانجليزية",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text("${StdScreen.engName}",style: TextStyle(
              fontSize: 15,
              color: Color(0xffb72238),
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 10,)
        ],
      ),
    ),//engName
    Container(
      margin: EdgeInsets.only(top: 20.0,right: 80),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(": الرقم الجامعي",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text("${StdScreen.std_id}",style: TextStyle(
              fontSize: 21,
              color: Color(0xffb72238),
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 20,)
        ],
      ),
    ),//stdNum
    Container(
      margin: EdgeInsets.only(top: 20.0,right: 70),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(": الحالة الاكاديمية",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text("${StdScreen.status}",style: TextStyle(
              fontSize: 23,
              color: Color(0xffb72238),
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 20,)
        ],
      ),
    ),//status
    Container(
      margin: EdgeInsets.only(top: 20.0,right: 80),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(": التخصص",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text("${LoginScreen.spec}",style: TextStyle(
              fontSize: 23,
              color: Color(0xffb72238),
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 20,)
        ],
      ),
    ),//spec
    Container(
      margin: EdgeInsets.only(top: 20.0,right: 80),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(": مكان الولادة",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text("${StdScreen.placOfBirth}",style: TextStyle(
              fontSize: 23,
              color: Color(0xffb72238),
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 20,)
        ],
      ),
    ),//birth
    Container(
      margin: EdgeInsets.only(top: 20.0,right: 80),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(": رقم الوطني",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text("${StdScreen.id}",style: TextStyle(
              fontSize: 21,
              color: Color(0xffb72238),
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 20,)
        ],
      ),
    ),//id
  ],
),
    );
  }
}
