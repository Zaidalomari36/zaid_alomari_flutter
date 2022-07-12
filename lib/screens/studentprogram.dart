import 'dart:async';

import 'package:exr/screens/loginscreen.dart';
import 'package:exr/screens/registscreen.dart';
import 'package:exr/screens/studscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';


class StudentProgram extends StatefulWidget {

  @override
  _StudentProgramState createState() => _StudentProgramState();
}

class _StudentProgramState extends State<StudentProgram> {
  late int courseCount=0;
  late var list=[];
  bool sub=false;
late String course1="",course2="",course3="",course4="",course5="";
  late String curdiv="";
  late String days1="",days2="",days3="",days4="",days5="";
  late String time1="",time2="",time3="",time4="",time5="";
  late String hall1="",hall2="",hall3="",hall4="",hall5="";
  late String num1="",num2="",num3="",num4="",num5="";
  late String courseName="",addCourseDays="",addCourseDiv="",addCoursetime="",addCourseHalls="",addCourseHours="",addCourseProf="";
  int change1=0,change2=0,change3=0,change4=0,change5=0;
  getCourseTime(num)
  async{
    var doc=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program").doc("course $num");
    await doc.get().then((value){
      setState(() {
        if(num==1){
          time1=value.data()!['time'];
        }
        else  if(num==2){
          time2=value.data()!['time'];
        }
        else if(num==3){
          time3=value.data()!['time'];
        }
        else if(num==4){
          time4=value.data()!['time'];
        }
        else{
          time5=value.data()!['time'];
        }
      });
    });
  }

  getCourseName(num)
  async{
   var doc=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program").doc("course $num");

   await doc.get().then((value){
     if(num==1){
     setState(() {
       course1=value.data()!['course name'];
     });}
     else if(num==2){
       setState(() {
         course2=value.data()!['course name'];
       });}
     else if(num==3){
       setState(() {
         course3=value.data()!['course name'];
       });}
     else if(num==4){
       setState(() {
         course4=value.data()!['course name'];
       });}
     else {
       setState(() {
         course5=value.data()!['course name'];
       });
     }
   });
    }



  getCourseDiv(num,coursname)
  async{
    var doc=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");
    await doc.where('course num',isEqualTo: num).get().then((value) {
      value.docs.forEach((element) {
          setState(() {
            curdiv=element.data()['div_num'];
          });
      });
    });


    if(curdiv=="1")
      {
        var course=FirebaseFirestore.instance.collection('courses').doc(coursname).collection('divisions');
        await course.where("div_no",isEqualTo: "2").get().then((value){
          value.docs.forEach((element) {
            setState(() {
              addCourseDays=element.data()['days'];
              addCourseHalls=element.data()['halls'];
              addCourseHours=element.data()['hours'];
              addCourseProf=element.data()['prof'];
              addCoursetime=element.data()['time'];
              addCourseDiv=element.data()['div_no'];
              courseName=coursname;
            });
          });
        });
      }
    else {
      var course=FirebaseFirestore.instance.collection('courses').doc(coursname).collection('divisions');
      await course.where("div_no",isEqualTo: "1").get().then((value){
        value.docs.forEach((element) {
          setState(() {
            addCourseDays=element.data()['days'];
            addCourseHalls=element.data()['halls'];
            addCourseHours=element.data()['hours'];
            addCourseProf=element.data()['prof'];
            addCoursetime=element.data()['time'];
            addCourseDiv=element.data()['div_no'];
            courseName=coursname;
          });
        });
      });
    }
  }

  getCourseHalls(num)
  async{
    var doc=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program").doc("course $num");

    await doc.get().then((value){
      setState(() {
        if(num==1){
          hall1=value.data()!['halls'];
        }
        else  if(num==2){
          hall2=value.data()!['halls'];
        }
        else if(num==3){
          hall3=value.data()!['halls'];
        }
        else if(num==4){
          hall4=value.data()!['halls'];
        }
        else{
          hall5=value.data()!['halls'];
        }
      });
    });
  }

  getCourseDays(num)
  async{
    var doc=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program").doc("course $num");
    await doc.get().then((value){
      setState(() {
        if(num==1){
          days1=value.data()!['days'];
        }
        else  if(num==2){
          days2=value.data()!['days'];
        }
        else if(num==3){
          days3=value.data()!['days'];
        }
        else if(num==4){
          days4=value.data()!['days'];
        }
        else{
          days5=value.data()!['days'];
        }
      });
    });
  }

  buildCard() {
    return Container(
        width: 400,
        height: 310,
        margin: EdgeInsets.only(top: 30),
        child:
        Card(
          color:  Color(0xff04854c).withOpacity(0.4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          child: Container(
            margin: EdgeInsets.only(top: 10,right: 8,left: 10),
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("اسم المادة",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text:
                      TextSpan(
                          text: '$course1',
                          style: TextStyle(
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async{
                              getCourseDiv("1",course1);

                            }),
                    ),
                    RichText(
                      text:
                      TextSpan(
                          text: '$course2',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async{
                                getCourseDiv("2",course2);
                            }),
                    ),
                    RichText(
                      text:
                      TextSpan(
                          text: '$course3',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async{
                                getCourseDiv("3",course3);
                            }),
                    ),
                    RichText(
                      text:
                      TextSpan(
                          text: '$course4',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async{
                                getCourseDiv("4",course4);
                            }),
                    ),
                    RichText(
                      text:
                      TextSpan(
                          text: '$course5',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async{
                                getCourseDiv("5",course5);
                            }),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("الايام",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(days1,style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(days2,style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(days3,style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(days4,style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(days5,style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                    Text("الوقت",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(time1,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(time2,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(time3,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(time4,style: TextStyle(
                      fontSize:13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(time5,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                    Text("القاعات",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(hall1,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(hall2,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(hall3,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(hall4,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text(hall5,style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }


@override
  void initState() {
    // TODO: implement initState
  for(int i=1;i<6;i++)
    {
      getCourseName(i);
      getCourseDays(i);
      getCourseTime(i);
      getCourseHalls(i);
    }
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Center(
            child:
              Column(
                children: [
                  SizedBox(height: 80,),
                  Center(
                    child: Text("لتغيير شعبة الرجاء الضغط على اسم المادة",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        //  decoration: TextDecoration.underline,
                        color: Color(0xff04854c),
                      ),
                    ),
                  ),
                  Center(
                    child: Text("لعرض الشعبةالاخرى في اسفل الجدول",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        //  decoration: TextDecoration.underline,
                        color: Color(0xff04854c),
                      ),
                    ),
                  ),
                  Center(
                    child: Text("والضفط عليها للاستبدال",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        //  decoration: TextDecoration.underline,
                        color: Color(0xff04854c),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  buildCard(),
                  SizedBox(height: 20,),
                  Container(
  width: 400,
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
      border: Border.all(
         color: Color(0xff054E27),
        width: 2
      ),
      borderRadius: BorderRadius.all(Radius.circular(20))
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    textDirection: TextDirection.rtl,
    children: [
      RichText(
        text:
        TextSpan(
            text: courseName,
            style: TextStyle(
              fontSize: 17,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              color: Color(0xff054E27),
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {

setState(() {
  if(courseName==course1)
    {
      change1++;
      course1=courseName;
      var flag1=days1;
      var flag2=time1;
      var flag3=hall1;

      var flag4=addCourseDays;
      var flag5=addCoursetime;
      var flag6=addCourseHalls;
if(change1%2!=0)
  {
    days1=flag4;
    time1=flag5;
    hall1=flag6;
    addCourseDays=flag1;
    addCoursetime=flag2;
    addCourseHalls=flag3;
  }
else{
days1=flag1;
time1=flag2;
hall1=flag3;
addCourseDays=flag4;
addCoursetime=flag5;
addCourseHalls=flag6;
}

    }
  if(courseName==course2)
  {
    change2++;
    course2=courseName;
    var flag1=days2;
    var flag2=time2;
    var flag3=hall2;

    var flag4=addCourseDays;
    var flag5=addCoursetime;
    var flag6=addCourseHalls;
    if(change2%2!=0)
    {
      days2=flag4;
      time2=flag5;
      hall2=flag6;
      addCourseDays=flag1;
      addCoursetime=flag2;
      addCourseHalls=flag3;
    }
    else{
      days2=flag1;
      time2=flag2;
      hall2=flag3;
      addCourseDays=flag4;
      addCoursetime=flag5;
      addCourseHalls=flag6;
    }
  }
  if(courseName==course3)
  {
    change3++;
    course3=courseName;
    var flag1=days3;
    var flag2=time3;
    var flag3=hall3;

    var flag4=addCourseDays;
    var flag5=addCoursetime;
    var flag6=addCourseHalls;
    if(change3%2!=0)
    {
      days3=flag4;
      time3=flag5;
      hall3=flag6;
      addCourseDays=flag1;
      addCoursetime=flag2;
      addCourseHalls=flag3;
    }
    else{
      days3=flag1;
      time3=flag2;
      hall3=flag3;
      addCourseDays=flag4;
      addCoursetime=flag5;
      addCourseHalls=flag6;
    }
  }


  if(courseName==course4)
  {
    change4++;
    course4=courseName;
    var flag1=days4;
    var flag2=time4;
    var flag3=hall4;

    var flag4=addCourseDays;
    var flag5=addCoursetime;
    var flag6=addCourseHalls;
    if(change4%2!=0)
    {
      days4=flag4;
      time4=flag5;
      hall4=flag6;
      addCourseDays=flag1;
      addCoursetime=flag2;
      addCourseHalls=flag3;
    }
    else{
      days4=flag1;
      time4=flag2;
      hall4=flag3;
      addCourseDays=flag4;
      addCoursetime=flag5;
      addCourseHalls=flag6;
    }
  }

  if(courseName==course5)
  {
    change5++;
    course5=courseName;
    var flag1=days5;
    var flag2=time5;
    var flag3=hall5;

    var flag4=addCourseDays;
    var flag5=addCoursetime;
    var flag6=addCourseHalls;
    if(change5%2!=0)
    {
      days5=flag4;
      time5=flag5;
      hall5=flag6;
      addCourseDays=flag1;
      addCoursetime=flag2;
      addCourseHalls=flag3;
    }
    else{
      days5=flag1;
      time5=flag2;
      hall5=flag3;
      addCourseDays=flag4;
      addCoursetime=flag5;
      addCourseHalls=flag6;
    }
  }

});
              }),
      ),
      Text(addCourseDays,style: TextStyle(
        fontSize: 13,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),),
      Text(addCoursetime,style: TextStyle(
        fontSize: 13,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),),
      Text(addCourseHalls,style: TextStyle(
        fontSize: 13,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),),
    ],
  ),

),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildButton("اعتماد البرنامج ", ()async{
                          late var list1=[];
                          late String id;
                          var ref1=FirebaseFirestore.instance.collection("users");
                        await ref1.where("std_id",isEqualTo: LoginScreen.ID).get().then((value) async{
                            value.docs.forEach((element) {
                              setState(() {
                                id= element.id;

                              });
                            });
                          });
                          await ref1.doc(id).update({
                            'reg_std':"1"
                          });
                          var ref=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");
                          var query=await ref.get();
                          var listdoc=query.docs;
                          listdoc.forEach((element) {
                            for(int i=1;i<6;i++)
                              {
                                if(i==1)
                                {
                                  final docUser=FirebaseFirestore.instance.collection('registered student').doc(LoginScreen.ID).collection("program").doc('course $i');
                                docUser.update(
                                    {
                                      'course name':course1,
                                      'time':time1,
                                      'days':days1,
                                      'halls':hall1,
                                    });} else if(i==2)
                                {
                                  final docUser=FirebaseFirestore.instance.collection('registered student').doc(LoginScreen.ID).collection("program").doc('course $i');
                                  docUser.update(
                                      {
                                        'course name':course2,
                                        'time':time2,
                                        'days':days2,
                                        'halls':hall2,
                                      });} else if(i==3)
                                {
                                  final docUser=FirebaseFirestore.instance.collection('registered student').doc(LoginScreen.ID).collection("program").doc('course $i');
                                  docUser.update(
                                      {
                                        'course name':course3,
                                        'time':time3,
                                        'days':days3,
                                        'halls':hall3,
                                      });}
                                else if(i==4)
                                {
                                  final docUser=FirebaseFirestore.instance.collection('registered student').doc(LoginScreen.ID).collection("program").doc('course $i');
                                  docUser.update(
                                      {
                                        'course name':course4,
                                        'time':time4,
                                        'days':days4,
                                        'halls':hall4,
                                      });}
                                else
                                {
                                  final docUser=FirebaseFirestore.instance.collection('registered student').doc(LoginScreen.ID).collection("program").doc('course $i');
                                  docUser.update(
                                      {
                                        'course name':course5,
                                        'time':time5,
                                        'days':days5,
                                        'halls':hall5,
                                      });}
                              }

                          });
                          int cnt=1;
                            while(cnt<6)
                              {
                                if (cnt==1)
                                {
                                  if(!list.contains(time1))
                                  {
                                    list.add(time1);
list1.add(course1);
                                  }
                                  else{
                                    Fluttertoast.showToast(msg: "الرجاء تعديل الجدول لوجود تعارض");
                                    break;
                                  }}
                                /////////1
                                if (cnt==2)
                                {
                                  if(!list.contains(time2))
                                  {list.add(time2);
                                  list1.add(course2);
                                  }
                                  else{
                                    Fluttertoast.showToast(msg: "الرجاء تعديل الجدول لوجود تعارض");
                                    break;
                                  }}
                                /////////2
                                if (cnt==3)
                                {
                                  if(!list.contains(time3))
                                  {
                                    list.add(time3);
                                    list1.add(course3);
                                  }
                                  else{
                                    Fluttertoast.showToast(msg: "الرجاء تعديل الجدول لوجود تعارض");
                                    break;
                                  }}
                                /////////3
                                if (cnt==4)
                                {
                                  if(!list.contains(time4))
                                  {
                                    list.add(time4);
                                    list1.add(course4);
                                  }
                                  else{
                                    Fluttertoast.showToast(msg: "الرجاء تعديل الجدول لوجود تعارض");
                                    break;
                                  }}
                                /////////4

                                if (cnt==5)
                                {
                                  if(!list.contains(time5))
                                  {
                                    list.add(time5);
                                    list1.add(course5);

                                    var add=FirebaseFirestore.instance.collection("users");
await add.where("category",isEqualTo: 'employee').get().then((value){
  value.docs.forEach((element) {
    var x=add.doc(element.id);
    x.update(
        {
            '${LoginScreen.ID} 1':  '$course1',
            '${LoginScreen.ID} 2':"$course2",
          '${LoginScreen.ID} 3':"$course3",
          '${LoginScreen.ID} 4':"$course4",
          '${LoginScreen.ID} 5':"$course5",
        }
    );
  });



});
setState(() {
  sub=true;
});
                                    Fluttertoast.showToast(msg: "تم اعتماد الجدول");
                                  }
                                  else{
                                    Fluttertoast.showToast(msg: "الرجاء تعديل الجدول لوجود تعارض");
                                    break;
                                  }
                                }

                                /////////5
                                cnt++;
                              }
                              list.clear();

                        }, 130.0  , Colors.black),
                        buildButton("الانتقال لصفحة الطالب", (){
                          if(sub==true)
                          {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  StdScreen()),
                          );}
                          else {
                            Fluttertoast.showToast(msg: "الرجاء اعتماد الجدول");
                          }
                        }, 200.0, Color(0xff04854c),),
                      ],
                    ),
                  ),
                  SizedBox(height: 80,),

                ],
              ),
          )),
    );
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
}
