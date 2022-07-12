import 'dart:async';

import 'package:exr/screens/secondquiz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class First_Exam extends StatefulWidget {
  static int result1=0;
  @override
  _First_ExamState createState() => _First_ExamState();
}

class _First_ExamState extends State<First_Exam> {
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
                            MaterialPageRoute(builder: (context) =>  SecondQuiz()),
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
            if(q[i]=="A") First_Exam.result1+=1;
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
            Text("English"),
            SizedBox(width:260 ,),
            buildTime(),
          ],
        ),
      backgroundColor: Color(0xff04854c),
      ),
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: (AssetImage("assets/images/bau7.jpg")),
            colorFilter:  ColorFilter.mode(Colors.transparent.withOpacity(0.25), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container( ///// answer A
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
                  "1- When",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                  width: 70,
                  child: Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),),
                Text(
                  "yesterday morning ?",style: TextStyle(
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
    Text("Did you get up",style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 18
    ),)
  ],
),
            Row(
              children: [
                Radio(value: "B", groupValue: group1, onChanged:(val){
                  setState(() {
                    group1=val.toString();

                    q[0]="B";
                  });
                } ),
                Text("You got up",style: TextStyle(fontWeight: FontWeight.bold,
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
                Text("Were you getting up",style: TextStyle(fontWeight: FontWeight.bold,
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
                Text("Do you get up",style: TextStyle(fontWeight: FontWeight.bold,
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
                                "2- Would you like",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                "water ?",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],

                          ),
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
                              Text("Some",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group2, onChanged:(val){
                                setState(() {
                                  group2=val.toString();
                                  q[1]="B";
                                });}
                              ),
                              Text("Any",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
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
                              Text("Much",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
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
                              Text("Many",style: TextStyle(fontWeight: FontWeight.bold,
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
                                "3- ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                "was he born ?",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],

                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group3, onChanged:(val){
                                setState(() {
                                  group3=val.toString();
                                  q[2]="A";
                                });
                              } ),
                              Text("When",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Which",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group3, onChanged:(val){
                                setState(() {
                                  group3=val.toString();
                                  q[2]="C";
                                });
                              } ),
                              Text("What",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Whose",style: TextStyle(fontWeight: FontWeight.bold,
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
                                "4- Salim",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                " dogs :",style: TextStyle(
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
                              Text("Hates",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Hate",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Is hating",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Was hating",style: TextStyle(fontWeight: FontWeight.bold,
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
                                "5- H'll",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                " many things next week :",style: TextStyle(
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
                              Text("Do",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Cause",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Make",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Form",style: TextStyle(fontWeight: FontWeight.bold,
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
                                "6- Look! The sky is cloudy, it ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                ".",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group6, onChanged:(val){
                                setState(() {
                                  group6=val.toString();
                                  q[5]="A";
                                });
                              } ),
                              Text("Is going to rain",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group6, onChanged:(val){
                                setState(() {
                                  group6=val.toString();
                                  q[5]="B";
                                });
                              } ),
                              Text("Will rain",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group6, onChanged:(val){
                                setState(() {
                                  group6=val.toString();
                                  q[5]="C";                              });
                              } ),
                              Text("Are going to rain",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "D", groupValue: group6, onChanged:(val){
                                setState(() {
                                  group6=val.toString();
                                  q[5]="D";                              });
                              } ),
                              Text("Will rains",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],),
                    )
                ),
                Container( //////answer A
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
                                "7- This shirt ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                "in Jordan. ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="A";                              });
                              } ),
                              Text("Is made",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="B";                              });
                              } ),
                              Text("Is being made",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="C";                              });
                              } ),
                              Text("Makes",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "D", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="D";                              });
                              } ),
                              Text("Is make",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],),
                    )
                ),
                Container( //////answer A
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
                                "8- Students ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                "exams. ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group8, onChanged:(val){
                                setState(() {
                                  group8=val.toString();
                                  q[7]="A";                              });
                              } ),
                              Text("Doesn't like",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group8, onChanged:(val){
                                setState(() {
                                  group8=val.toString();
                                  q[7]="B";                              });
                              } ),
                              Text("Doesn't likes",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group8, onChanged:(val){
                                setState(() {
                                  group8=val.toString();
                                  q[7]="C";                              });
                              } ),
                              Text("Don't likes",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "D", groupValue: group8, onChanged:(val){
                                setState(() {
                                  group8=val.toString();
                                  q[7]="D";
                                });
                              } ),
                              Text("Don't like",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],),
                    )
                ),
                Container( ///answer A
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
                                "9- Adam forgot ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                "the door. ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group9, onChanged:(val){
                                setState(() {
                                  group9=val.toString();
                                  q[8]="A";                              });
                              } ),
                              Text("To lock",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group9, onChanged:(val){
                                setState(() {
                                  group9=val.toString();
                                q[8]="B";
                                });
                              } ),
                              Text("Locking",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group9, onChanged:(val){
                                setState(() {
                                  group9=val.toString();
                                q[8]="C";
                                });
                              } ),
                              Text("Locked",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "D", groupValue: group9, onChanged:(val){
                                setState(() {
                                  group9=val.toString();
                                  q[8]="D";
                                });
                              } ),
                              Text("Lock",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],),
                    )
                ),
                Container( ////answer A
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
                                "10- A lion ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12,left: 7,right: 5),
                                width: 70,
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),),
                              Text(
                                "faster than a fox. ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group10, onChanged:(val){
                                setState(() {
                                  group10=val.toString();
                                  q[9]="A";
                                });
                              } ),
                              Text("Runs",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group10, onChanged:(val){
                                setState(() {
                                  group10=val.toString();
                                  q[9]="B";
                                });
                              } ),
                              Text("Is running",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group10, onChanged:(val){
                                setState(() {
                                  group10=val.toString();
                                  q[9]="C";
                                });
                              } ),
                              Text("To run",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "D", groupValue: group10, onChanged:(val){
                                setState(() {
                                  group10=val.toString();
                                  q[9]="D";
                                });
                              } ),
                              Text("Run",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],),
                    )
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 150,),
                  width: 100,
                  child: RaisedButton(
                    color: Color(0xff197d47),
                    child: Row(
                      children: [
                        SizedBox(width: 8,),
                        Text("Next",style: TextStyle(
                            color: Colors.white,fontWeight:FontWeight.bold,fontSize: 18 ),),
                        Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 18,)
                      ],
                    ),
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
                        {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SecondQuiz()),
                      );}
                      else
                        {
                          Fluttertoast.showToast(msg: "الرجاء الجواب على جميع الاسئلة");
                        }
setState(() {
  for(int i=0;i<10;i++)
  {
    if(q[i]=="A") First_Exam.result1+=1;
  }
  visib=false;
  count=0;
});
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                ),
SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
