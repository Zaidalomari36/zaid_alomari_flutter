import 'package:exr/screens/firstquiz.dart';
import 'package:exr/screens/suggques.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExplainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
              margin: EdgeInsets.only(top: 20),
              child: Image(image: AssetImage('assets/images/ BAU.jpg',),width: 300,height: 300,),
            ),
Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
  child:   Text("طلابنا الأعزاء، قُبَيْلَ عملية تسجيلكم لمواد الفصل الدراسي الاول،سيتم إخْضاعكم لثلاث اختبارات لقياس مستوياتكم في المواد الاساسية التي تشمل اللغة العربية واللغة الانجليزية ومهارات الحاسوب",

    textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
),
              SizedBox(height: 15,),
              //لمساعدتكم في التحضير للاختبارات ،نوفر لكم اسئلة مقترحة

              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "لمساعدتكم للتحضير للاختبارات ،نوفر لكم             ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ])),
              Container(
                width: 150,
                child: RaisedButton(
                  color: Color(0xffb72238),
                  child: Text("اسئلة مقترحة",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  SuggestionsQuestions()),
                    );

                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                child: RaisedButton(
                  color: Color(0xff197d47),
                  child: Text("بدء الامتحان",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  First_Exam()),
                    );

                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child:   Text("مدة كل اختبار هي 10 دقائق",

                  textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffb72238)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
