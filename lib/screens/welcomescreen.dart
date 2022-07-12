import 'package:exr/screens/explainscreen.dart';
import 'package:exr/screens/loginscreen.dart';
import 'package:exr/screens/registscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class WelcomeScreen extends StatefulWidget {
//  static String CoursesList_id="CL";
static String wel_screen_id="ws";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int count=0;
  /*getCurrentUser()async{
    var user=await FirebaseAuth.instance.currentUser;
    if(user!=null)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  ExplainScreen()),
      );  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child:
Center(
  child: Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Image(image: AssetImage('assets/images/logo2.png',),width: 300,height: 300,),
      ),
      Container(
        margin: EdgeInsets.only(top: 20),
        child: (
        Text(
          "اهلا بكم في جامعة البلقاء التطبيقية",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 23
          ),
        )
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 20),
        child: (
            Text(
              "أنتم البوابة التي نستطيع من خلالها العبور إلى الضفة الأخرى فلا تخذلونا",
                textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23
              ),
            )
        ),
      ),
      Container(
        child: (
            Text(
              "القادة الحقيقين يُصنَعون من هنا كونوا قادة لأنفسكم و لأهلكم",
              textAlign: TextAlign.center,
              style: TextStyle(

                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23
            ),
            )
        ),
      ),
      SizedBox(height: 60,),
      buildButton("بدء عملية التسجيل")
    ],
  ),
)
      ),
    );
  }
  buildCard(num){
    return  Container(
      width: 250,
      height: 250,
      margin: EdgeInsets.only(top: 10,left: 10,right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/img$num.png',
          fit: BoxFit.cover,
        ),
      )
    );
  }
  buildButton(text)
  {
    return
     Container(
       width: 220,
       child: RaisedButton(
              color: Color(0xff04854c),
              child: Text(text,
                  style: TextStyle(
                    color: Color(0xffF0ECE8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ExplainScreen()),
                );              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
     );

  }
}
