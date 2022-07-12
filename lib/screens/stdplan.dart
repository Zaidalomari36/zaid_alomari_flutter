import 'package:exr/screens/studscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StdPlan extends StatelessWidget {
  late var list=[];
  late String crs1,crs2,crs3,crs4,crs5;
  String crs6="زراعة في الاردن",crs7="بيئة و مجتمع";
  @override
  Widget build(BuildContext context) {
    list.add("");
    for(int i=0;i<6;i++)
      {
        if(i==1)
          {
            list.add(StdScreen.course1);
          }
        else if(i==2)
        {
          list.add(StdScreen.course2);
        }
        else if(i==3)
        {
          list.add(StdScreen.course3);
        }
        else if(i==4)
        {
          list.add(StdScreen.course4);
        }
        else if(i==5)
        {
          list.add(StdScreen.course5);
        }
      }

    if(list.contains("اللغة العربية 99"))
      {
        crs1="اللغة العربية 1";
      }
    else {
      crs1 = "اللغة العربية 2";
    }


    if(list.contains("مهارات حاسوب 99"))
    {
      crs2="مهارات حاسوب 1";
    }
    else if(list.contains("مهارات حاسوب 1")){
      crs2 = "مهارات حاسوب 2";
    }
    else if(list.contains("مهارات حاسوب 2")){
      crs2 = "المنطق الرقمي";
      crs5="مباديء هندسة البرمجيات";
    }


    if(list.contains("اللغة الانجليزية 99"))
    {
      crs3="اللغة الانجليزية 1";
    }
    else {
      crs3 = "اللغة الانجليزية 2";
    }

    crs4="تفاضل و تكامل 2";
crs5="تربية وطنية";



    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0,left: 140),
            child: Text("الخطة الاسترشادية",style: TextStyle(
                fontSize: 33,
                color: Color(0xff04854c),
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            width: 350,
            margin: EdgeInsets.only(top: 15.0,/*left: 140*/),
            child: Center(
              child: Text(": برامج مقترحة للفصل القادم",style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            ),
          ),
          SizedBox(height: 30,),
          Container(
  width: 400,
  height: 210,
  margin: EdgeInsets.only(left: 20),
  child:Row(
    children: [
      Container(
        width: 180,
        height: 220,
        decoration: BoxDecoration(
            border: Border.all(
                color: Color(0xff054E27),
                width: 3
            ),
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
child: Column(
  children: [
    Center(
      child:Text("المقترح (1)",style: TextStyle(
          fontSize: 22,
          color: Color(0xffb72238),
          fontWeight: FontWeight.bold
      ),),
    ),

    Center(
      child:Text("$crs1",style: TextStyle(
          fontSize: 19,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child:Text("$crs2",style: TextStyle(
          fontSize: 19,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child:Text("$crs3",style: TextStyle(
          fontSize: 19,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child:Text("$crs4",style: TextStyle(
          fontSize: 19,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child:Text("$crs5",style: TextStyle(
          fontSize: 19,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    ),
  ],
),
      ),
      SizedBox(width: 20,),
      Container(
        width: 180,
        height: 220,
        decoration: BoxDecoration(
            border: Border.all(
                color: Color(0xff054E27),
                width: 3
            ),
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          children: [
            Center(
              child:Text("المقترح (2)",style: TextStyle(
                  fontSize: 22,
                  color: Color(0xffb72238),
                  fontWeight: FontWeight.bold
              ),),
            ),

            Center(
              child:Text("$crs1",style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Center(
              child:Text("$crs2",style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Center(
              child:Text("$crs3",style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Center(
              child:Text("$crs5",style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Center(
              child:Text("$crs6",style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            ),
          ],
        ),
      ),
    ],
  ),
),
          SizedBox(height: 20,),
          Container(
            width: 400,
            height: 210,
            margin: EdgeInsets.only(left: 20),
            child:Row(
              children: [
                Container(
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      border: Border.all(
                          color: Color(0xff054E27),
                          width: 3
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Center(
                        child:Text("المقترح (3)",style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffb72238),
                            fontWeight: FontWeight.bold
                        ),),
                      ),

                      Center(
                        child:Text("$crs1",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs2",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs3",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs5",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs6",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      border: Border.all(
                          color: Color(0xff054E27),
                          width: 3
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Center(
                        child:Text("المقترح (4)",style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffb72238),
                            fontWeight: FontWeight.bold
                        ),),
                      ),

                      Center(
                        child:Text("$crs1",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs2",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs3",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs5",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Center(
                        child:Text("$crs7",style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),);
  }}


