import 'dart:async';

import 'package:exr/screens/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ThirdQuiz extends StatefulWidget {
  static int result3=0;


  @override
  _ThirdQuizState createState() => _ThirdQuizState();
}

class _ThirdQuizState extends State<ThirdQuiz> {
  static var countDownDuration=Duration(minutes: 10);
  Duration duration=Duration();
  Timer ?timer;
  var seconds;
  var minutes;
  bool isCountDown=true;
  int count=0;
  Widget buildTime(){
    String twoDigits(int n)=>n.toString().padLeft(2,'0');
    minutes =twoDigits(duration.inMinutes.remainder(60));
    seconds=twoDigits(duration.inSeconds.remainder(60));
    return
      Text(
          "$minutes:$seconds"
      );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
    reset();
  }

  void reset()
  {
    if(isCountDown)
      setState(() {
        duration=countDownDuration;
      });
  }

  bool visib=true;

  openDialog(){
    return  showDialog(
        context: context,

        builder: (context) {
          return Visibility(
            visible: visib,
            child: Container(
              height: 400,
              child: Dialog(
                child:Container(
                  height: 250,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Row(
                        crossAxisAlignment:CrossAxisAlignment.end ,
                        textDirection: TextDirection.rtl,
                        children: [
                          SizedBox(width: 13,),
                          Text("انتهى الوقت المعتمد لهذا الاختبار و سيتم",textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),),
                        ],
                      ),
                      Row(
                        crossAxisAlignment:CrossAxisAlignment.end ,
                        textDirection: TextDirection.rtl,
                        children: [
                          SizedBox(width: 80,),
                          Text(" اعتماد الاجوبة الاخيرة",textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),),
                        ],),
                      SizedBox(height: 30,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff04854c),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  ThirdQuiz()),
                          );
                        },
                        child:Container(
                          width: 150,
                          alignment: Alignment.center,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child:  Text("الاختبار التالي",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ],),
                ) ,
              ),
            ),
          );}
    );}


  startTimer()
  {
    timer=Timer.periodic(Duration(seconds: 1), (_)=>addTime());
  }

  addTime() async{
    final addSeconds= isCountDown?-1:1;
    setState(() {
      seconds=duration.inSeconds+addSeconds;
      if(seconds<0)
      {
        timer?.cancel();
        openDialog();

        setState(() {
          for(int i=0;i<10;i++)
          {
            if(q[i]=="A") ThirdQuiz.result3+=1;
          }
        });

      }
      else
        duration=Duration(seconds: seconds);
    });
  }

  String group1="";
  String group2="";
  String group3="";
  String group4="";
  String group5="";
  String group6="";
  String group7="";
  String group8="";
  String group9="";
  String group10="";

  var q = new List.filled(10,"");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text("اللغة العربية"),
            SizedBox(width:220 ,),
            buildTime(),
          ],
        ),
        backgroundColor: Color(0xff04854c),
      ),
body: Container(
  decoration:  BoxDecoration(
    image: DecorationImage(
      image: (AssetImage("assets/images/bau7.jpg")),
      colorFilter:  ColorFilter.mode(Colors.transparent.withOpacity(0.2), BlendMode.dstATop),
      fit: BoxFit.cover,
    ),),
  child:   SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          Container(
              width: 350,
              height: 320,
              margin: EdgeInsets.only(top: 30),
              child: Card(
                color:  Color(0xff04854c).withOpacity(0.4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.end ,
                      textDirection: TextDirection.rtl,
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          "١-علامات الترقيم المناسبة في قوله ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,),
                        ),],
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.end ,
                      textDirection: TextDirection.rtl,
                      children: [
                        SizedBox(width: 20,),
                        Text(
                          ": (*قال الشيخ*ما أحسن الايمان)",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            ),

                        ),

                      ],),

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="A";

                          });

                        } ),

                        Text("!/:",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="B";

                          });

                        } ),

                        Text("؟/:",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="C";

                          });

                        } ),

                        Text("./:",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="D";

                          });

                        } ),

                        Text("لا شيء مما ذكر",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          Container(

              width: 350,

              height: 280,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color:  Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

  SizedBox(width: 15,),

                        Text(": ٢-اسم مما يلي ممنوع من الصرف",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,),

                        ),

                      ],),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="A";

                          });

                        } ),

                        Text("العلماء",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="B";

                          });

                        } ),

                        Text("لوط",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="C";

                          });

                        } ),

                        Text("بشرى",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="D";

                          });

                        } ),

                        Text("هدى",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          Container(

              width: 350,

              height: 280,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color:  Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 10,),

                        RichText(

                            text: TextSpan(children: [

                              TextSpan(

                                text: ": ’٣-  نوع (لا) في جملة ’",

                                style: TextStyle(fontSize: 20, color: Colors.black
                            ,fontWeight: FontWeight.bold,
                                ),

                              ),

                              TextSpan(

                                text: "لا انسان مخلد  ",

                                style: TextStyle(

                                  fontSize: 20,

                                  color: Colors.black,

                                  fontWeight: FontWeight.bold,

                                ),

                              ),

                            ])),

                      ],

                    ),

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="A";

                          });

                        } ),

                        Text("النافية للجنس",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="B";

                          });

                        } ),

                        Text("العاطفة",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="C";

                          });

                        } ),

                        Text("ناهية",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment:CrossAxisAlignment.end ,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="D";

                          });

                        } ),

                        Text("العملة عمل ليس",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          Container(

              width: 350,

              height: 280,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color:  Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 10,),

                        RichText(

                            text:

                            TextSpan(

                                children: [

                                  TextSpan(

                                    text: "٤- تفعل ",

                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,

                                      color: Colors.black,

                                    ),

                                  ),

                                  TextSpan(

                                    text: "لعل",

                                    style: TextStyle(

                                        fontSize: 20,

                                        color: Colors.black,

                                        fontWeight: FontWeight.bold,

                                        decoration: TextDecoration.underline

                                    ),

                                  ),

                                  TextSpan(

                                    text: " في عبارة :",

                                    style: TextStyle(

                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,

                                    ),

                                  ),

                                  TextSpan(

                                    text:" لعل الغائب عائد",

                                    style: TextStyle(

                                      fontSize: 20,

                                      color: Color(0xffb72238),

                                      fontWeight: FontWeight.bold,

                                    ),

                                  )

                                ])

                        ),

                      ],

                    ),

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="A";

                          });

                        } ),

                        Text("التمني",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="B";

                          });

                        } ),

                        Text("الاستدراك",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="C";

                          });

                        } ),

                        Text("التشبيه",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="D";

                          });

                        } ),

                        Text("الترجي",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          Container(

              width: 350,

              height: 280,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color:  Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 10,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        RichText(

                            text:

                            TextSpan(

                                children: [

                                  TextSpan(

                                    text: "٥- نوع ",

                                    style: TextStyle(

                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,

                                    ),

                                  ),

                                  TextSpan(

                                    text: "ما",

                                    style: TextStyle(

                                        fontSize: 19,

                                        color: Colors.black,

                                        fontWeight: FontWeight.bold,

                                      decoration: TextDecoration.underline

                                    ),

                                  ),

                                  TextSpan(

                                    text: " في عبارة :",

                                    style: TextStyle(

                                      fontSize: 19,

                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),

                                  ),

                                  TextSpan(

                                    text:" السماء جميلة عندما تصفو",

                                    style: TextStyle(

                                      fontSize: 19,

                                      color: Color(0xffb72238),

                                      fontWeight: FontWeight.bold,

                                    ),

                                  )

                                ])

                        ),

                      ],

                    ),

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="A";

                          });

                        } ),

                        Text("مصدرية",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="B";

                          });

                        } ),

                        Text("زائدة",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="C";

                          });

                        } ),

                        Text("موصولة",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="D";

                          });

                        } ),

                        Text("تعجبية",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          Container(

              width: 350,

              height: 320,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color:  Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 10,),

                        RichText(

                            text:

                            TextSpan(

                                children: [

                                  TextSpan(

                                    text: "٦- لفظة ",

                                    style: TextStyle(

                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,

                                    ),

                                  ),

                                  TextSpan(

                                    text: "مختار",

                                    style: TextStyle(

                                        fontSize: 20,

                                        color: Colors.black,

                                        fontWeight: FontWeight.bold,

                                        decoration: TextDecoration.underline

                                    ),

                                  ),

                                  TextSpan(

                                    text: " من الناحية الصرفية في قولنا",

                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,

                                      color: Colors.black,

                                    ),

                                  ),

                                ])

                        ),



                      ],

                    ),

                    SizedBox(height: 5,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 50,),

                        Text(" سلمت على مختار القرية",

                          style:

                          TextStyle(

                            fontSize: 22,

                            color: Color(0xffb72238),

                            fontWeight: FontWeight.bold,

                          ),)



                      ],),

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group6, onChanged:(val){

                          setState(() {

                            group6=val.toString();

                            q[5]="A";

                          });

                        } ),

                        Text("اسم مفعول",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group6, onChanged:(val){

                          setState(() {

                            group6=val.toString();

                            q[5]="B";

                          });

                        } ),

                        Text("اسم فاعل",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group6, onChanged:(val){

                          setState(() {

                            group6=val.toString();

                            q[5]="C";

                          });

                        } ),

                        Text("اسم مكان",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group6, onChanged:(val){

                          setState(() {

                            group6=val.toString();

                            q[5]="D";

                          });

                        } ),

                        Text("لا شيء مما ذكر",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],),

              )

          ),
          Container(

              width: 350,

              height: 280,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color:  Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 10,),

                        RichText(

                            text:

                            TextSpan(

                                children: [

                                  TextSpan(

                                    text: "٧- في قولنا  ",

                                    style: TextStyle(

                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,

                                    ),

                                  ),

                                  TextSpan(

                                    text:"الخيل فيها الخير",

                                    style: TextStyle(

                                      fontSize: 20,

                                      color: Color(0xffb72238),

                                      fontWeight: FontWeight.bold,

                                    ),

                                  )

                                ])),

                      ],),

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group7, onChanged:(val){

                          setState(() {

                            group7=val.toString();

                            q[6]="A";

                          });

                        } ),

                        Text("جناس",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group7, onChanged:(val){

                          setState(() {

                            group7=val.toString();

                            q[6]="B";

                          });

                        } ),

                        Text("طباق",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group7, onChanged:(val){

                          setState(() {

                            group7=val.toString();

                            q[6]="C";

                          });

                        } ),

                        Text("استعارة",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group7, onChanged:(val){

                          setState(() {

                            group7=val.toString();

                            q[6]="D";

                          });

                        } ),

                        Text("كناية",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],),

              )

          ),
          Container(

              width: 350,

              height: 300,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color:  Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 25,),

                        Text(

                          "٨-أحد الخيارات التاية ليست",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,),

                        ),

                      ],
                    ),
                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 25,),

                        Text(

                          "من الافعال الخمسة ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,),

                        ),

                      ],
                    ),
                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group8, onChanged:(val){

                          setState(() {

                            group8=val.toString();

                            q[7]="A";

                          });

                        } ),

                        Text("يعملن",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group8, onChanged:(val){

                          setState(() {

                            group8=val.toString();

                            q[7]="B";

                          });

                        } ),

                        Text("يعملون",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group8, onChanged:(val){

                          setState(() {

                            group8=val.toString();

                            q[7]="C";

                          });

                        } ),

                        Text("يقولان",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group8, onChanged:(val){

                          setState(() {

                            group8=val.toString();

                            q[7]="D";

                          });

                        } ),

                        Text("تكتبين",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],),

              )

          ),
          Container(
              width: 350,
              height: 280,
              margin: EdgeInsets.only(top: 30),
              child: Card(
                color:  Color(0xff04854c).withOpacity(0.4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "٩-الجملة الصحيحة ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,),

                        ),

                      ],),

                    SizedBox(height: 15,),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "A", groupValue: group9, onChanged:(val){

                          setState(() {

                            group9=val.toString();

                            q[8]="A";

                          });

                        } ),

                        Text("شاهدت أباك",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "B", groupValue: group9, onChanged:(val){

                          setState(() {

                            group9=val.toString();

                            q[8]="B";

                          });

                        } ),

                        Text("حضر أباك",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "C", groupValue: group9, onChanged:(val){

                          setState(() {

                            group9=val.toString();

                            q[8]="C";

                          });

                        } ),

                        Text("حضر أبيك",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      crossAxisAlignment: CrossAxisAlignment.end,

                      textDirection: TextDirection.rtl,

                      children: [

                        Radio(value: "D", groupValue: group9, onChanged:(val){

                          setState(() {

                            group9=val.toString();

                            q[8]="D";

                          });

                        } ),

                        Text("شاهدت أبوك",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],),

              )

          ),
          Container(
              width: 350,
              height: 280,
              margin: EdgeInsets.only(top: 30),
              child: Card(
                color:  Color(0xff04854c).withOpacity(0.4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: TextDirection.rtl,
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          ": ١٠-الجملة الصحيحة مما يلي ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,),
                        ),
                      ],),
                    SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: TextDirection.rtl,
                      children: [
                        Radio(value: "A", groupValue: group10, onChanged:(val){
                          setState(() {
                            group10=val.toString();
                            q[9]="A";
                          });
                        }),
                        Text("نجحت اثنتان وعشرون طالبة",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: TextDirection.rtl,
                      children: [
                        Radio(value: "B", groupValue: group10, onChanged:(val){
                          setState(() {
                            group10=val.toString();
                            q[9]="B";
                          });
                        } ),
                        Text("نجحت اثنتين و عشرون طالبة",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: TextDirection.rtl,
                      children: [
                        Radio(value: "C", groupValue: group10, onChanged:(val){
                          setState(() {
                            group10=val.toString();
                            q[9]="C";
                          });
                        } ),
                        Text("نجحت اثنتان وعشرين طالبة",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: TextDirection.rtl,
                      children: [
                        Radio(value: "D", groupValue: group10, onChanged:(val){
                          setState(() {
                            group10=val.toString();
                            q[9]="D";
                          });
                        } ),
                        Text("نجحت اثنتين وعشرين طالبة",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],),
                  ],),
              )),
          SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.only(top: 20,left: 140,),
            width: 110,
            child: RaisedButton(
              color: Color(0xff197d47),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Text("Finish",style: TextStyle(
                      color: Colors.white,fontWeight:FontWeight.bold,fontSize: 18 ),),
                  Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 18,)
                ],),
              onPressed: () {
                if(group1!="")
                  count++;
                if(group2!="")
                  count++;
                if(group3!="")
                  count++;
                if(group4!="")
                  count++;
                if(group5!="")
                  count++;
                if(group6!="")
                  count++;
                if(group7!="")
                  count++;
                if(group8!="")
                  count++;
                if(group9!="")
                  count++;
                if(group10!="")
                  count++;
                if(count==10)
                  {Navigator.push(

                      context,

                      MaterialPageRoute(builder: (context) =>  Result()),

                    );}
                else
                {Fluttertoast.showToast(msg: "الرجاء الجواب على جميع الاسئلة");}
                setState(() {
                  for(int i=0;i<10;i++)
                  {
                    if(q[i]=="A") ThirdQuiz.result3+=1;
                  }
                  visib=false;
                  count=0;
                });
                },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),),
          SizedBox(height: 30,)
        ],),
    ),),
),);
  }}
