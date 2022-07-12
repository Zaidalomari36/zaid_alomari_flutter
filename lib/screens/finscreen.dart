import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:exr/screens/finish1.dart';
import 'package:exr/screens/studscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'loginscreen.dart';
import 'midscreen.dart';
class FinalScreen extends StatefulWidget {
  static int finalResult=0;
  static String id="";
  static String coursename="مقدمة لبرمجة الحاسوب";
  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
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
      );}

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
                            MaterialPageRoute(builder: (context) =>  Finish1()),
                          );
                        },
                        child:Container(
                          width: 150,
                          alignment: Alignment.center,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child:  Text("Submit",
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
          for(int i=0;i<5;i++)
          {
            if(q[i]=="A") FinalScreen.finalResult+=8;
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

  var q = new List.filled(5,"");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text("الامتحان النهائي"),
            SizedBox(width:200 ,),
            buildTime(),
          ],
        ),
        backgroundColor: Color(0xff04854c),
      ),
body:Container(
  decoration:  BoxDecoration(
    image: DecorationImage(
      image: (AssetImage("assets/images/bau7.jpg")),
      colorFilter:  ColorFilter.mode(Colors.transparent.withOpacity(0.25), BlendMode.dstATop),
      fit: BoxFit.cover,
    ),),
  child: SingleChildScrollView(
    child:   Center(
      child: Column(
        children: [
          Container( ///// answer A

              width: 350,

              height: 310,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                  color: Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "1- Know exactly what we want from ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],



                    ),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          " the program :",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],



                    ),

                    SizedBox(height: 15,),

                    Row(

                      children: [

                        Radio(value: "A", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="A";

                          });

                        } ),

                        Text("Understand the issue and analyzing",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 17

                        ),)

                      ],

                    ),
                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          " its elements .",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],



                    ),
                    SizedBox(height: 5,),
                    Row(

                      children: [

                        Radio(value: "B", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="B";

                          });

                        } ),

                        Text("Formulate a solution to the problem",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "C", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="C";

                          });

                        } ),

                        Text("algorithm",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "D", groupValue: group1, onChanged:(val){

                          setState(() {

                            group1=val.toString();

                            q[0]="D";

                          });

                        } ),

                        Text("Flowcharts",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          Container( /////////answer A

              width: 350,

              height: 300,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                  color: Color(0xff04854c).withOpacity(0.4),
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "2- A language that writes commands",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          " as a string of binary numbers (0,1) :",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],),

                    SizedBox(height: 15,),

                    Row(

                      children: [

                        Radio(value: "A", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="A";

                          });

                        }

                        ),

                        Text("Machine",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 16

                        ),)

                      ],

                    ),


                    SizedBox(height: 5,),

                    Row(

                      children: [

                        Radio(value: "B", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="B";

                          });}

                        ),

                        Text("C",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 16

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "C", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="C";

                          });

                        } ),

                        Text("Java",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 16

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "D", groupValue: group2, onChanged:(val){

                          setState(() {

                            group2=val.toString();

                            q[1]="D";

                          });

                        } ),

                        Text("C++",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 16

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          Container(

              width: 350,

              height: 340,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color: Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "3- Determine the steps taken to reach",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),
                        ),],



                    ),
                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "the solution to ensure the correctness",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],),
                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "of the solutions :",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],),
                    SizedBox(height: 15,),

                    Row(

                      children: [

                        Radio(value: "A", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="A";

                          });

                        } ),

                        Text("Formulating problem solving",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],),

                    Row(

                      children: [

                        Radio(value: "B", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="B";

                          });

                        } ),

                        Text("Understanding the issue and",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),
                    Row(

                      children: [

                        SizedBox(width: 50,),

                        Text(

                          "identifying its elements",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],),
                    Row(

                      children: [

                        Radio(value: "C", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="C";

                          });

                        } ),

                        Text("algorithm",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "D", groupValue: group3, onChanged:(val){

                          setState(() {

                            group3=val.toString();

                            q[2]="D";

                          });

                        } ),

                        Text("Program",style: TextStyle(fontWeight: FontWeight.bold,

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

              height: 300,

              margin: EdgeInsets.only(top: 30),

              child: Card(

                color: Color(0xff04854c).withOpacity(0.4),

                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "4-A language characterized by its short",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],



                    ),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "commands in addition to being easy",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),



                      ],



                    ),
                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "to read and understand :",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),



                      ],



                    ),
                    SizedBox(height: 15,),

                    Row(

                      children: [

                        Radio(value: "A", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="A";

                          });

                        } ),

                        Text("Basic",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "B", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="B";

                          });

                        } ),

                        Text("Assembly",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "C", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="C";

                          });

                        } ),

                        Text("C++",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "D", groupValue: group4, onChanged:(val){

                          setState(() {

                            group4=val.toString();

                            q[3]="D";

                          });

                        } ),

                        Text("Java",style: TextStyle(fontWeight: FontWeight.bold,

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
                color: Color(0xff04854c).withOpacity(0.4),
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)

                ),

                child: Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      children: [

                        SizedBox(width: 10,),

                        Text(

                          "5- of high-level languages :",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),

                        ),

                      ],



                    ),


                    SizedBox(height: 15,),

                    Row(

                      children: [

                        Radio(value: "A", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="A";

                          });

                        } ),

                        Text("Pseudocode",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "B", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="B";

                          });

                        } ),

                        Text("Assembly Language",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "C", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="C";

                          });

                        } ),

                        Text("Visual Basic",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                    Row(

                      children: [

                        Radio(value: "D", groupValue: group5, onChanged:(val){

                          setState(() {

                            group5=val.toString();

                            q[4]="D";

                          });

                        } ),

                        Text("Basic",style: TextStyle(fontWeight: FontWeight.bold,

                            fontSize: 18

                        ),)

                      ],

                    ),

                  ],

                ),

              )

          ),
          SizedBox(height: 25,),
          Container(
            width: 120,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: Color(0xff197d47),
              child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
              onPressed: () async{
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
                if(count==5)
                  {
                    for(int i=0;i<5;i++)
                    {
                      if(q[i]=="A")
                      {
                        setState(() {
                          FinalScreen.finalResult+=8;
                          visib=false;
                        });
                      }}
                    var ref=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");
                    await ref.where("course name",isEqualTo:FinalScreen.coursename ).get().then((value){
                      value.docs.forEach((element) {
                        print(element.id);
                        setState(() {
                          FinalScreen.id=element.id;
                        });
                        var mid_ex=ref.doc(FinalScreen.id).update(
                            {
                              'donefin':"1",
                              'final':FinalScreen.finalResult.toString()
                            });
                      });
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Finish1()),
                    );
                  }
                else {
                  Fluttertoast.showToast(msg: "الرجاء الجواب على جميع الاسئلة");
                }
              },),
          ),
          SizedBox(height: 25,),
        ],

      ),

    ),
  ),
),
    );
  }
}
