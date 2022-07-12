import 'package:exr/screens/firstquiz.dart';
import 'package:exr/screens/loginscreen.dart';
import 'package:exr/screens/secondquiz.dart';
import 'package:exr/screens/studentprogram.dart';
import 'package:exr/screens/thirdquiz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';


import 'firstquiz.dart';

class RegistrationScreen extends StatefulWidget {
  static String courseName1="",courseName2="",courseName3="",courseName4="",courseName5="";
  static String div1="",div2="",div3="",div4="",div5="";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String string1,string2,string3,divNo;
   int courseCount=0,totalHours=0,count=0;
  late var list=[];
  Color color1=Color(0xff19A559),color2=Color(0xff19A559),color3=Color(0xff19A559),color4=Color(0xff19A559),color5=Color(0xff19A559),color6=Color(0xff054E27),color7=Color(0xff054E27);
  late int uniqItem;
   var uniqueNums=List.filled(5, 0,growable: true);
  bool visibl=false;
  String string4="مقدمة لبرمجة الحاسوب",string5="تفاضل و تكامل 1",course_name="",div1_no="",div2_no="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(First_Exam.result1>4) //english
        {
      setState(() {
        setState(() {
          string1="اللغة الانجليزية 1";
        });
      });
    }
    else
    {
      setState(() {
        string1="اللغة الانجليزية 99";
      });
    }


    if(SecondQuiz.result2>4)//computer skills
        {
      if(SecondQuiz.result2>7)
      {
        setState(() {
          string2="مهارات حاسوب 2";
        });
      }
      else
        {
          setState(() {
            string2="مهارات حاسوب 1";
          });
        }

    }
    else
    {
      setState(() {
        string2="مهارات حاسوب 99";
      });
    }


    if(ThirdQuiz.result3>4) //arabic
    {
      setState(() {
setState(() {
  string3="اللغة العربية 1";
});
      });
    }

    else
      {
        setState(() {
          setState(() {
            string3="اللغة العربية 99";
          });
        });
      }
  }

 void readInfo(name)
  {
    var userref=FirebaseFirestore.instance.collection("courses").
    doc(name).collection("divisions").get().then((value) {
      value.docs.forEach((element) {
        if(element.data()['div_no']=="1")
        {
          setState(() {
            div1_no=element.data()['div_no'];

          });
        }
        if(element.data()['div_no']=="2")
        {
          setState(() {
            div2_no=element.data()['div_no'];

          });
        }
      });
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
      child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 13,),
                Column(
                  children: [
                    Text("تسجيل المواد", style: TextStyle(
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff04854c),
                    ),),
                    Text("الساعات المسموحة هي : 15", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),

                  ],
                ),
                SizedBox(width: 25,),
                Image(image: AssetImage('assets/images/bau3.png',),width: 185,height: 250,),
              ],),
            Text("اختر المادة بالضغط عليها لاختيار الشعبة",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              color: Color(0xff04854c),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  buildButton(string1, (){
                    readInfo(string1);
                    setState(() {
                      visibl=true;
                      course_name=string1;
                      color1=Color(0xffb72238);
                    });
                  },150.0,color1),


                  buildButton(string2, (){
                    readInfo(string2);
                    setState(() {
                      visibl=true;
                      course_name=string2;
                      color2=Color(0xffb72238);
                    });
                  },150.0,color2),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  buildButton(string3, (){
                    readInfo(string3);
                    setState(() {
                      visibl=true;
                      course_name=string3;
                      color3=Color(0xffb72238);
                    });
                  },150.0,color3),

                  buildButton(string4, (){
                    readInfo(string4);
                    setState(() {
                      visibl=true;
                      course_name=string4;
                      color4=Color(0xffb72238);
                    });
                  },180.0,color4),

                ],
              ),
            ),
            SizedBox(height: 20,),
            buildButton(string5, (){
              readInfo(string5);
              setState(() {
                visibl=true;
                course_name=string5;
                color5=Color(0xffb72238);
              });
            },150.0,color5),
            SizedBox(height: 20,),
            buildCard(),
            SizedBox(height: 20,),
            buildButton("عرض الجدول", (){
             if(totalHours<15)
                {
                  buildToast("لم يتم تسجيل الحد الادنى من الساعات وهو 15 ساعة");
                }
              else
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  StudentProgram()),
                  );
                }
            },150.0,Color(0xff054E27)),
            SizedBox(height: 50,),

          ],
      ),
    ),
        ));
  }

  buildButton(text,onpress,width,color)
  {
    return Container(
      width: width,
      child: RaisedButton(
        color: color,
        child:
        Text(text,style: TextStyle(
            color: Colors.white,fontWeight:FontWeight.bold,fontSize: 16 ),),
        onPressed: onpress,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
    );
  }
  buildCard()
  {
    return Container(
      width: 320,
      height: 135,
      decoration:
      BoxDecoration(
        border: Border.all(
          color:Color(0xff19A559),
          width: 3.0
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          SizedBox(width: 25,),
          Container(
            child: Column(
  children: [
    Text("اسم المادة",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(0xff197d47)),),
    Text(course_name,style: TextStyle(fontSize: 20,color: Color(0xff197d47)),),
    SizedBox(height: 10,),
    Text(course_name,style: TextStyle(fontSize: 20,color: Color(0xff197d47)),)
  ],
),
          ),
          SizedBox(width: 50,),
          Container(
            child: Column(
              children: [
                Text("الوصف",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(0xff197d47)),),
                Visibility(
                  visible: visibl,
                  child: RichText(
                  text:
                  TextSpan(
                      text: 'التفاصيل',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: color6,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
openDialog("1");
                      }),
                  ),
                ),
                SizedBox(height: 13,),
                Visibility(
                  visible: visibl,
                  child: RichText(
                    text:
                    TextSpan(
                        text: 'التفاصيل',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: color7,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openDialog("2");
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openDialog(num) async{
    late String days,halls,hours,prof,time,uniqNum;
    var userre=FirebaseFirestore.instance.collection("courses").doc(course_name).collection("divisions");
    await userre.where("div_no",isEqualTo:num ).get().then((value){
      value.docs.forEach((element) {

        days=element.data()['days'];
        halls=element.data()['halls'];
        hours=element.data()['hours'];
        prof=element.data()['prof'];
        time=element.data()['time'];
        divNo=element.data()['div_no'];
        uniqNum=element.data()['unique_num'];
      });
    });

     showDialog(
         context: context,
         builder: (context){
           uniqItem=int.parse(uniqNum);
          return AlertDialog(
            elevation: 24.0,
title: Center(child: Text(": تفاصيل عن الشعبة",style: TextStyle(color: Color(0xff054E27),fontWeight: FontWeight.bold,fontSize: 25),)),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            content: Container(
                height: 320 ,
                width: 400,
                child: SingleChildScrollView(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(": اسم المادة",style: TextStyle(
                                  color: Color(0xff054E27),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 30,),
                              Text("$course_name",style: TextStyle(
                                  color: Color(0xffb72238),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Color(0xff054E27),
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(": عدد الساعات المعتمدة",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 30,),
                              Text("$hours",style: TextStyle(
                                  color: Color(0xffb72238),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Color(0xff054E27),
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(": رقم الشعبة",style: TextStyle(
                                  color: Colors.black ,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 30,),
                              Text("$num",style: TextStyle(
                                  color: Color(0xffb72238),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Color(0xff054E27),
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(": الايام",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 30,),
                              Text("$days",style: TextStyle(
                                  color: Color(0xffb72238),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Color(0xff054E27),
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(": الوقت",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 30,),
                              Text("$time",style: TextStyle(
                                  color: Color(0xffb72238),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Color(0xff054E27),
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(": المدرس",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 30,),
                              Text("$prof",style: TextStyle(
                                  color: Color(0xffb72238),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Color(0xff054E27),
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(": القاعات",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 30,),
                              Text("$halls",style: TextStyle(
                                  color: Color(0xffb72238),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Color(0xff054E27),
                          ),
                          Container(
                            width: 220,
                            child:RaisedButton(
                              child:Text("إضافة الشعبة الى الجدول",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),) ,
                              color:Color(0xff04854c),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              onPressed: () async {
                               if(!list.contains(time)) {
                                 courseCount++;
                                 totalHours+=3;
                                 var ref=FirebaseFirestore.instance.collection("registered student")
                                     .doc(LoginScreen.ID).collection("program");
                                 if (courseCount <= 5) {
                                   list.add(time);
                                   if (!uniqueNums.contains(uniqItem)) {
                                     uniqueNums.add(int.parse(uniqNum));

                                     var query = await ref.get();
                                     var listdoc = query.docs;
                                     listdoc.forEach((element) {
                                       final docUser = FirebaseFirestore.instance.collection('registered student').doc(LoginScreen.ID)
                                           .collection("program")
                                           .doc('course $courseCount');
                                       docUser.update(
                                           {
                                             'course name': course_name,
                                             'hours': hours,
                                             'halls': halls,
                                             'prof': prof,
                                             'time': time,
                                             'days': days,
                                             'div_num': divNo
                                           }
                                       );
                                     });
                                     count++;
                                     if (count == 1) {
                                       setState(() {
                                         RegistrationScreen.div1 = divNo;
                                       });
                                     }
                                     else if (count == 2) {
                                       setState(() {
                                         RegistrationScreen.div2 = divNo;
                                       });
                                     } else if (count == 3) {
                                       setState(() {
                                         RegistrationScreen.div3 = divNo;
                                       });
                                     }
                                     else if (count == 4) {
                                       setState(() {
                                         RegistrationScreen.div4 = divNo;
                                       });
                                     }
                                     else if (count == 5) {
                                       setState(() {
                                         RegistrationScreen.div5 = divNo;
                                       });
                                     }
                                     buildToast("تم اضافة شعبة الى الجدول");
                                   }
                                   else {
                                     buildToast(
                                         "لا يجوز اضافة شعبتين من نفس المادة");
                                   }
                                 }
                               }
                               else {buildToast("تتعارض في الوقت مع مادة أخرى,اختر الشعبة الاخرى");}
                               },
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

           );
         });
  }

  
  
  void buildToast(text)
{
  Fluttertoast.showToast(msg: text);
}
}
