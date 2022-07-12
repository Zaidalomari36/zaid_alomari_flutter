import 'package:exr/screens/studscreen.dart';
import 'package:flutter/material.dart';

class StrGrade extends StatefulWidget {

  @override
  _StrGradeState createState() => _StrGradeState();
}

class _StrGradeState extends State<StrGrade> {

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
     child:Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.0,left: 160),
          child: Text("كشف العلامات",style: TextStyle(
              fontSize: 30,
              color: Color(0xff04854c),
              fontWeight: FontWeight.bold
          ),),
        ),
        SizedBox(height: 40,),
        Container(
          margin: EdgeInsets.only(right: 30),
          child: Row(
            textDirection: TextDirection.rtl,
children: [

  RichText(
    text:
    TextSpan(
      children: [
          TextSpan(
            text: ' الفصل الدراسي :',
            style:
            TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
          TextSpan(
            text: ' الاول',
            style:
            TextStyle(
                fontSize: 18,
                color: Color(0xffb72238),
                fontWeight: FontWeight.bold
            ),),
      ],),

  ),
  SizedBox(width: 20,),
  RichText(
    text:
    TextSpan(
      children: [
          TextSpan(
            text: 'السنة الدراسية :',
            style:
            TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
          TextSpan(
            text: '2022/2021',
            style:
            TextStyle(
                fontSize: 18,
                color: Color(0xffb72238),
                fontWeight: FontWeight.bold
            ),),
      ],),

  ),
],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.only(right: 38),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              RichText(
                text:
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'عدد الساعات: ',
                      style:
                      TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                    TextSpan(
                      text: '15',
                      style:
                      TextStyle(
                          fontSize: 18,
                          color: Color(0xffb72238),
                          fontWeight: FontWeight.bold
                      ),),
                  ],),

              ),
              SizedBox(width: 50,),
              RichText(
                text:
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'المعدل الفصلي :',
                      style:
                      TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                    TextSpan(
                      text: ' ${StdScreen.grade} ',
                      style:
                      TextStyle(
                          fontSize: 19,
                          color: Color(0xffb72238),
                          fontWeight: FontWeight.bold
                      ),),
                  ],),

              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          width: 385,
          height: 240,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              border: Border.all(
                  color: Color(0xff054E27),
                  width: 3
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("اسم المادة",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.course1}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.course2}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.course3}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.course4}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.course5}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),

                ],
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("العلامة المئوية",style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff054E27),
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.grad1}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.grad2}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.grad3}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.grad4}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.grad5}",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),

                ],
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("العلامة الرمزية",style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.sym1}",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.sym2}",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.sym3}",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.sym4}",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),
                  Text("${StdScreen.sym5}",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffb72238),
                      fontWeight: FontWeight.bold
                  ),),

                ],
              ),
            ],
          )
        ),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.only(right: 25),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              RichText(
                text:
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' المعدل التراكمي :',
                      style:
                      TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                    TextSpan(
                      text: ' ${StdScreen.grade} ',
                      style:
                      TextStyle(
                          fontSize: 18,
                          color: Color(0xffb72238),
                          fontWeight: FontWeight.bold
                      ),),
                  ],),

              ),
SizedBox(width: 25,),
              RichText(
                text:
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'عدد الساعات التراكمية : ',
                      style:
                      TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                    TextSpan(
                      text: '15',
                      style:
                      TextStyle(
                          fontSize: 18,
                          color: Color(0xffb72238),
                          fontWeight: FontWeight.bold
                      ),),
                  ],),

              ),],
          ),),
        SizedBox(height: 20,),
      ],),
    );}
}
