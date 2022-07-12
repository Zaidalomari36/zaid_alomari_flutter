import 'package:exr/screens/explainscreen.dart';
import 'package:exr/screens/studscreen.dart';
import 'package:exr/screens/welcomescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'adminscreen.dart';
class LoginScreen extends StatefulWidget {
   static String stud_id="";
static String id="login";
 static String ID="";
  static String  name="",spec="";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth=FirebaseAuth.instance;
  var std_id=TextEditingController();
  var pass_ctrl=TextEditingController();

  late String StdId;
  late String password;
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
    child: Image(image: AssetImage('assets/images/BAU.jpg',),width: 300,height: 300,),
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("إذا كنت من الطلبة قم بوضع الرقم الجامعي ",textAlign: TextAlign.center,style: TextStyle(
          fontSize:20,fontWeight: FontWeight.bold
      ),),
      Text("وكلمة السر",textAlign: TextAlign.center,style: TextStyle(
          fontSize:20,fontWeight: FontWeight.bold
      ),),
      Text(" و إذا كنت من الموظفين قم بوضع الرقم الوظيفي وكلمة السر",textAlign: TextAlign.center,style: TextStyle(
          fontSize:20,fontWeight: FontWeight.bold
      ),),
    ],
  ),

  SizedBox(height: 10,),
  Container(
    width: 290,
    height: 220,
    decoration: BoxDecoration(
        color: Color(0xff04854c).withOpacity(0.4),
        borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          width: 250,
          height: 80,
          child: TextField(
            controller: std_id,
            keyboardType:TextInputType.emailAddress ,
            autocorrect: true,
            decoration: InputDecoration(
              hintText: "ID ...",
              hintStyle: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 18,
                fontWeight:FontWeight.bold
              ),
              filled: true,
              fillColor: Colors.white70,
              prefixIcon: Icon(Icons.person,color: Colors.grey.shade800,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30),
          width: 250,
          height: 80,
          child: TextField(
            controller: pass_ctrl,
            obscureText: true,
            autocorrect: true,
            decoration: InputDecoration(
              hintText: "PASSWORD ...",
              hintStyle: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),
              filled: true,
              fillColor: Colors.white70,
              prefixIcon: Icon(Icons.password,color: Colors.grey.shade800,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.green, ),
              ),
            ),
          ),
        ),
SizedBox(height: 8,),
buildButton("NEXT")
      ],
    ),
  ),
SizedBox(height: 30,),
  SizedBox(height: 50,),
],),)),

    );
  }

  buildButton(text)
  {
    return
      Container(
        width: 100,
        child: RaisedButton(
          color: Colors.white70,
          child: Text(text,
            style: TextStyle(
                color: Color(0xff04854c).withOpacity(0.7),
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          onPressed:
              () async{
           late String reg;
                var userref=FirebaseFirestore.instance.collection("users");
            StdId=std_id.text.toString()+"@std.bau.edu.jo";
            LoginScreen.ID=std_id.text;
            password=pass_ctrl.text.toString();
            LoginScreen.stud_id=std_id.text.toString();
            await userref.where("std_id",isEqualTo: LoginScreen.stud_id)
                .get().then((value) {
              value.docs.forEach((element) {
                setState(() {
                 LoginScreen.name=element.data()['name'];
                 LoginScreen.spec=element.data()['Specialization'];
                 reg=element.data()['reg_std'];
                });
              });
            });
            try {
             late String cteg;
              final user=await _auth.signInWithEmailAndPassword(email: StdId.trim(), password: password.trim());
              if(user!=null)
              {
                var user1=FirebaseFirestore.instance.collection("users");
                await user1.where("personal_id",isEqualTo:LoginScreen.ID).get().then((value){
                  value.docs.forEach((element) {
                    cteg=element.data()['category'];
                  });
                });
if(cteg=="student")
  {
    if(reg=="0"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  WelcomeScreen()),
      );}
    else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  StdScreen()),
      );}
  }
else if(cteg=="employee"){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  AdminScreen()),
  );
}

              }} on FirebaseAuthException catch  (e) {
              if(e.message=="Given String is empty or null")
                Fluttertoast.showToast(msg: "أدخل الرقم وكلمة المرور للدخول");
              else
                Fluttertoast.showToast(msg: "  خطا في الرقم الجامعي او كلمة المرور ...");
            }},
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      );

  }
}

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