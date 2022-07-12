import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:exr/screens/thirdquiz.dart';
import 'package:flutter/material.dart';

class SecondQuiz extends StatefulWidget {
  static int result2=0;
  @override
  _SecondQuizState createState() => _SecondQuizState();
}

class _SecondQuizState extends State<SecondQuiz> {
  static var countDownDuration=Duration(seconds: 10);
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
            if(q[i]=="A") SecondQuiz.result2+=1;
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
            Text("Computer Skills"),
            SizedBox(width:180 ,),
            buildTime()
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "1-The unit of measurement for the ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,),
                              ),

                            ],

                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Row(
                              children: [
                                Text(
                                  "accuracy of the scanner is :",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,),
                                ),
                              ],),
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
                              Text("inch",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("dpi",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("bps",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("bit",style: TextStyle(fontWeight: FontWeight.bold,
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
                            children: [
                              SizedBox(width: 10,),
                              Text("2- High level programming languages :",style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,),
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
                              } ),
                              Text("close to human language",style: TextStyle(fontWeight: FontWeight.bold,
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
                                });
                              } ),
                              Text("very far from human language",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("It's called machine language",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("It is called assembly language",style: TextStyle(fontWeight: FontWeight.bold,
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "3- Windows can be closed using :",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),],
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
                              Text("All of the below",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group3, onChanged:(val){
                                setState(() {
                                  group3=val.toString();
                                  q[2]="B";
                                });
                              } ),
                              Text("Exit",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Close",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Alt + F4",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],
                      ),)
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "4- Screen size is measured in :",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),],
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
                              Text("The inch",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("millimeter",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Meter",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("pound",style: TextStyle(fontWeight: FontWeight.bold,
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "5- Word processor software is an ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],

                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Row(
                              children: [
                                Text(
                                  "example of :",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,),
                                ),
                              ],),
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
                              Text("Application software",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Operating software",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("programming languages",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("General purpose software",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],
                      ),)
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "6- Which of the following symbols ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),

                            ],),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Row(
                              children: [
                                Text(
                                  "is usually used to refer to a hard",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Row(
                              children: [
                                Text(
                                  "disk ?",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group6, onChanged:(val){
                                setState(() {
                                  group6=val.toString();
                                  q[5]="A";
                                });
                              } ),
                              Text("D",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("B",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group6, onChanged:(val){
                                setState(() {
                                  group6=val.toString();
                                  q[5]="C";
                                });
                              } ),
                              Text("M",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "D", groupValue: group6, onChanged:(val){
                                setState(() {
                                  group6=val.toString();
                                  q[5]="D";
                                });
                              } ),
                              Text("A",style: TextStyle(fontWeight: FontWeight.bold,
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "7- PowerPoint, Excel, Word programs ",style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Row(
                              children: [
                                Text(
                                  "are from a group :",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="A";
                                });
                              } ),
                              Text("Microsoft office",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="B";
                                });
                              } ),
                              Text("Microsoft Windows",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="C";
                                });
                              } ),
                              Text("Word Perfect",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "D", groupValue: group7, onChanged:(val){
                                setState(() {
                                  group7=val.toString();
                                  q[6]="D";
                                });
                              } ),
                              Text("Super office",style: TextStyle(fontWeight: FontWeight.bold,
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "8- The following site is: ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Row(
                              children: [
                                Text(
                                  "www.jadara.edu.jo ",
                                  style: TextStyle(
                                    decoration:TextDecoration.underline ,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,),
                                ),
                              ],),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group8, onChanged:(val){
                                setState(() {
                                  group8=val.toString();
                                  q[7]="A";
                                });
                              } ),
                              Text("Educational site",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "B", groupValue: group8, onChanged:(val){
                                setState(() {
                                  group8=val.toString();
                                  q[7]="B";
                                });
                              } ),
                              Text("government site",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(value: "C", groupValue: group8, onChanged:(val){
                                setState(() {
                                  group8=val.toString();
                                  q[7]="C";
                                });
                              } ),
                              Text("commercial site",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("organizations website",style: TextStyle(fontWeight: FontWeight.bold,
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "9- One of the following can be used as",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                              ),
                            ],),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Row(
                              children: [
                                Text(
                                  "an output unit :",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,),
                                ),
                              ],),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Radio(value: "A", groupValue: group9, onChanged:(val){
                                setState(() {
                                  group9=val.toString();
                                  q[8]="A";
                                });
                              } ),
                              Text("Data show",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Scanner",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("light pen",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("microphone",style: TextStyle(fontWeight: FontWeight.bold,
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
                            children: [
                              SizedBox(width: 10,),
                              Text(
                                "10- An example of volatile memory : ",style: TextStyle(
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
                              Text("RAM",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Hard disk",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("Floppy disk",style: TextStyle(fontWeight: FontWeight.bold,
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
                              Text("None of the above",style: TextStyle(fontWeight: FontWeight.bold,
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
                          MaterialPageRoute(builder: (context) =>  ThirdQuiz()),
                        );}
                      else
                      {
                        Fluttertoast.showToast(msg: "الرجاء الجواب على جميع الاسئلة");
                      }

                      setState(() {
                        for(int i=0;i<10;i++)
                        {
                          if(q[i]=="A") SecondQuiz.result2+=1;
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
          ),),
      ),
    );}
}
