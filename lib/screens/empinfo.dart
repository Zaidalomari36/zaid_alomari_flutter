import 'package:flutter/material.dart';

import 'adminscreen.dart';

class EmpInfo extends StatefulWidget {

@override
  _EmpInfoState createState() => _EmpInfoState();
}

class _EmpInfoState extends State<EmpInfo> {

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0,left: 160),
              child: Text("معلومات الموظف",style: TextStyle(
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
                  Text(": اسم الموظف",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${AdminScreen.arabName}",style: TextStyle(
                      fontSize: 23,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0,right: 80),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(": الاسم بالانجليزية",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${AdminScreen.engName}",style: TextStyle(
                      fontSize: 23,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,)
                ],
              ),
            ),//engName
            Container(
              margin: EdgeInsets.only(top: 20.0,right: 80),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(": الرقم الوطني",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${AdminScreen.id}",style: TextStyle(
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
                  Text(": المسمى الوظيفي",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${AdminScreen.jobt}",style: TextStyle(
                      fontSize: 23,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,)
                ],
              ),
            ),
          ],
        ),
    );
  }
}
