import 'package:exr/screens/finscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:exr/screens/studscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'loginscreen.dart';
import 'midscreen.dart';

class StdExams extends StatefulWidget {
static String don1="",donf="",mark1="",mark2="";
  @override
  _StdExamsState createState() => _StdExamsState();
}

class _StdExamsState extends State<StdExams> {
  var courses=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");


  buildMid(coursename)
  {

    String mark="0";
  if(coursename=="مقدمة لبرمجة الحاسوب"){
if(StdExams.don1=="0") {
  return RichText(
    text:
    TextSpan(
        text: 'بدء الامتحان',
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: Color(0xff054E27),
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MidScreen()),
            );
          }),
  );
}
  else if(StdExams.don1=="1") {
  var ref=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");
ref.where("course name",isEqualTo: "مقدمة لبرمجة الحاسوب").get().then((value){
  value.docs.forEach((element) {
    if (this.mounted) {
      setState(() {
        StdExams.mark1=element.data()['mid'];

      });
    }

  });
});
  return Text("${StdExams.mark1}",style: TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold
  ),);
}
  }
  else {
    if(coursename==StdScreen.course1)
    {
      if(StdScreen.course1!="مقدمة لبرمجة الحاسوب")
      { mark=StdScreen.mid1;}
    }
    else if(coursename==StdScreen.course2)
    {
      if(StdScreen.course2!="مقدمة لبرمجة الحاسوب")
      { mark=StdScreen.mid2;}
    }
    else if(coursename==StdScreen.course3)
    {
      if(StdScreen.course3!="مقدمة لبرمجة الحاسوب")
      { mark=StdScreen.mid3;}
    }
    else if(coursename==StdScreen.course4)
    {
      if(StdScreen.course4!="مقدمة لبرمجة الحاسوب")
      { mark=StdScreen.mid4;}
    }
    else if(coursename==StdScreen.course5)
    {
      if(StdScreen.course5!="مقدمة لبرمجة الحاسوب")
      { mark=StdScreen.mid5;}
    }
    return   Text("$mark",style:
    TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold
    ),);

    }
  }



  buildFin(coursename)
  {

    String mark="0";
    if(coursename=="مقدمة لبرمجة الحاسوب"){
      if(StdExams.donf=="0") {
        return RichText(
          text:
          TextSpan(
              text: 'بدء الامتحان',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Color(0xff054E27),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  FinalScreen()),
                  );
                }),
        );
      }
      else if(StdExams.donf=="1") {
        var ref=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");
        ref.where("course name",isEqualTo: "مقدمة لبرمجة الحاسوب").get().then((value){
          value.docs.forEach((element) {
            if (this.mounted) {
              setState(() {
                StdExams.mark2=element.data()['final'];

              });
            }


          });
        });
        return Text("${StdExams.mark2}",style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),);
      }
    }
    else {
      if(coursename==StdScreen.course1)
      {
        if(StdScreen.course1!="مقدمة لبرمجة الحاسوب")
        { mark=StdScreen.fin1;}
      }
      else if(coursename==StdScreen.course2)
      {
        if(StdScreen.course2!="مقدمة لبرمجة الحاسوب")
        { mark=StdScreen.fin2;}
      }
      else if(coursename==StdScreen.course3)
      {
        if(StdScreen.course3!="مقدمة لبرمجة الحاسوب")
        { mark=StdScreen.fin3;}
      }
      else if(coursename==StdScreen.course4)
      {
        if(StdScreen.course4!="مقدمة لبرمجة الحاسوب")
        { mark=StdScreen.fin4;}
      }
      else if(coursename==StdScreen.course5)
      {
        if(StdScreen.course5!="مقدمة لبرمجة الحاسوب")
        { mark=StdScreen.fin5;}
      }
      return   Text("$mark",style:
      TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),);

    }
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0,left: 160),
            child: Text("الامتحانات والنتائج",style: TextStyle(
                fontSize: 30,
                color: Color(0xff04854c),
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 30,),
          Container(
              width: 390,
              height: 290,
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
                            color: Color(0xff054E27),
                            fontWeight: FontWeight.bold
                        ),),
                        Text("${StdScreen.course1}",style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("${StdScreen.course2}",style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("${StdScreen.course3}",style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("${StdScreen.course4}",style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("${StdScreen.course5}",style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
SizedBox(height: 5,),
                      ],
                    ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                   Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("الامتحان النصفي",style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff054E27),
                            fontWeight: FontWeight.bold
                        ),),
                        buildMid(StdScreen.course1),
                        buildMid(StdScreen.course2),
                        buildMid(StdScreen.course3),
                        buildMid(StdScreen.course4),
                        buildMid(StdScreen.course5),
                        SizedBox(height: 5,),
                      ],
                    ),

                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("الامتحان النهائي",style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff054E27),
                            fontWeight: FontWeight.bold
                        ),),
                        buildFin(StdScreen.course1),
                        buildFin(StdScreen.course2),
                        buildFin(StdScreen.course3),
                        buildFin(StdScreen.course4),
                        buildFin(StdScreen.course5),
                        SizedBox(height: 5,),

                      ],),

                  ],
              )),
          SizedBox(height: 30,),
          Container(
              width: 300,
              height: 290,
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
                          color: Color(0xff054E27),
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
                      SizedBox(height: 5,),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("علامةالمشاركة",style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff054E27),
                          fontWeight: FontWeight.bold
                      ),),
                      Text(StdScreen.par1,style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff054E27),
                          fontWeight: FontWeight.bold
                      ),),
                      Text(StdScreen.par2,style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff054E27),
                          fontWeight: FontWeight.bold
                      ),),
                      Text(StdScreen.par3,style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff054E27),
                          fontWeight: FontWeight.bold
                      ),),
                      Text(StdScreen.par4,style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff054E27),
                          fontWeight: FontWeight.bold
                      ),),
                      Text(StdScreen.par5,style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff054E27),
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 5,),
                    ],
                  ),
                ],
              )),
          SizedBox(height: 60,),
        ],),
    );}
}
