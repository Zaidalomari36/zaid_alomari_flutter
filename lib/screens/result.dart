import 'package:exr/screens/firstquiz.dart';
import 'package:exr/screens/loginscreen.dart';
import 'package:exr/screens/registscreen.dart';
import 'package:exr/screens/secondquiz.dart';
import 'package:exr/screens/thirdquiz.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var res1=First_Exam.result1; //english
  var res2=SecondQuiz.result2; //computer skills
   var res3=ThirdQuiz.result3; //arabic
  late String arb_res;
late String eng_res;
late String com_res;
late Color color1;
  late Color color2;
  late Color color3;
late String name=LoginScreen.name,spec=LoginScreen.spec;








  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
    });
// getDate();
   /* FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid)
    .collection('users')
    .get().then((value) {
      return value.date(){}
    });
    var totalClasses = await FirebaseFirestore.instance
        .collection('tutors')
        .doc(uid)
        .get()
        .then((value) {
      return value.data()['TotalClassesTook']; // Access your after your get the data
    });*/
  }



  @override
  Widget build(BuildContext context) {

    if(res1 >=5)
      {
        setState(() {
          eng_res="ناجح";
          color1=Colors.green;
        });
      }
    else
      {
        setState(() {
          eng_res="راسب";
          color1=Colors.red;
        });

      }


    if(res2 >=5)
    {
      setState(() {
        com_res="ناجح";
        color2=Colors.green;
      });
    }
    else
    {
      setState(() {
        com_res="راسب";
        color2=Colors.red;
      });

    }

    if(res3 >=5)
    {
      setState(() {
        arb_res="ناجح";
        color3=Colors.green;
      });
    }
    else
    {
      setState(() {
        arb_res="راسب";
        color3=Colors.red;
      });

    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Center(child: Image(image: AssetImage('assets/images/bau2.png',),width: 370,)),
            SizedBox(height: 25,),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                SizedBox(width: 17,),
              Text(": الاسم ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              ),
                SizedBox(width: 10,),
                Text(name,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
            ],),
            SizedBox(height: 15,),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                SizedBox(width: 17,),
                Text(": التخصص ",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text(spec,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],),
            SizedBox(height: 20,),
Container(
  width: 350,
  height: 255,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color:Color(0xffecf3ec),
    boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.grey,
          blurRadius: 3.0,
    offset: new Offset(0.0, 3.0)
        )]
  ),
child: Column(
  children: [
    SizedBox(height: 15,),
    Row(
      textDirection: TextDirection.rtl,
      children: [
        SizedBox(width: 20,),
        Text(" نتائج الاختبارات",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color:Color(0xff04854c),
          decoration: TextDecoration.underline
        ),
        ),
      ],
    ),
    SizedBox(height: 20,),
    Row(
      textDirection: TextDirection.rtl,
      children: [
        Column(
         children: [
           Row(
             textDirection: TextDirection.rtl,
             children: [
               Text(": اللغة العربية",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 22
               ),),
             ],
           ),
           SizedBox(height: 15,),
           Row(
             textDirection: TextDirection.rtl,
             children: [
               SizedBox(width: 25,),
               Text(": اللغة الانجليزية",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 22
               ),),
             ],
           ),
           SizedBox(height: 15,),
           Row(
             textDirection: TextDirection.rtl,
             children: [
               SizedBox(width: 50,),
               Text(": مهارات الحاسوب",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 22
               ),),
             ],),
         ],),
        SizedBox(width: 85,),
        Column(
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("$arb_res",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: color3
                ),),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("$eng_res",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: color1
                ),),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("$com_res",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: color2
                ),),
              ],),
          ],),
      ],)
  ],),
),
            SizedBox(height: 15,),
            Container(
      width: 150,
      child:
      RaisedButton(

        child:Text("تسجيل المواد",
          style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),) ,
        color:Color(0xff04854c),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  RegistrationScreen()),
          );

          var userref=FirebaseFirestore.instance.collection('users');
          var query=await userref.get();
          var listdoc=query.docs;
          listdoc.forEach((element) {
            if(element.data()['std_id']==LoginScreen.ID){
              final docUser=FirebaseFirestore.instance.collection('users').
              doc('${element.id}');

              docUser.update(
                  {
                    'EnglishRes':eng_res,
                    'arabicRes':arb_res,
                    'ComSkillsRes':com_res
                  }
              );
            }
          });
          },
      ),)
          ],),
      ),);
  }}

class User{
  final String stdid;
  final String name;
  final String Specialization;
  User({
    required this.stdid,
    required this.name,
    required this.Specialization
  });
  Map <String,dynamic>toJson()=>
      {
        'name':name,
        'std_id':stdid,
        'Specialization':Specialization
      };
  static User fromJson(Map<String,dynamic>json)=>User(stdid: json['std_id'],
      name: json['name'],
      Specialization: json['Specialization']);
}