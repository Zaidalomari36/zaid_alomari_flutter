import 'package:exr/screens/loginscreen.dart';
import 'package:exr/screens/studscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'adminscreen.dart';


class Courses extends StatefulWidget {
static var val1="31801002019",val2="31901002003";
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {

  
  @override
  Widget build(BuildContext context) {


    buildRows(){
     late var list=[];
      for(int i=1;i<11;i++)
        {
          if(i==1)
            {if(AdminScreen.course1!="")
                  list.add(AdminScreen.course1);}
          else if(i==2)
          {if(AdminScreen.course2!="")
            list.add(AdminScreen.course2);}
          else if(i==3)
          {if(AdminScreen.course3!="")
            list.add(AdminScreen.course3);}
          else if(i==4)
          {if(AdminScreen.course4!="")
            list.add(AdminScreen.course4);}
          else if(i==5)
          {if(AdminScreen.course5!="")
            list.add(AdminScreen.course5);}
          else if(i==6)
          {if(AdminScreen.course6!="")
            list.add(AdminScreen.course6);}
          else if(i==7)
          {if(AdminScreen.course7!="")
            list.add(AdminScreen.course7);}
          else if(i==8)
          {if(AdminScreen.course9!="")
            list.add(AdminScreen.course9);}
          else if(i==9)
          {if(AdminScreen.course9!="")
            list.add(AdminScreen.course9);}
          else if(i==10)
          {if(AdminScreen.course10!="")
            list.add(AdminScreen.course10);}
        }
      late var newlist=[];


      for(var i in list)
        {
          if(!newlist.contains(i))
            {
              newlist.add(i);
            }
        }

        return Column(
          children: <Widget>[
for(var i in newlist)
            Container(
  margin: EdgeInsets.all(30),
  width: 220,
  height: 230,
  decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.3),
      border: Border.all(
              color: Color(0xff054E27),
              width: 3
      ),
      borderRadius: BorderRadius.all(Radius.circular(15))
  ),
  child:   Center(
    child: Column(
            children: [
              Text("$i",style: TextStyle(
                  fontSize: 23.5,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              Text(": الطلاب المسجلين",style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff054E27),
                  fontWeight: FontWeight.bold
              ),),
              RichText(
               text:
                  TextSpan(
          text:Courses.val1 ,
          style: TextStyle(
            fontSize: 18,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
            color: Color(0xffb72238),
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () async{
            }),
    ),
              SizedBox(height: 20,),
              RichText(
                text:
                TextSpan(
                    text:Courses.val2 ,
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffb72238),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async{
                      }),
              ),
            ],
      ),

  ),
),
          ],
        );
    }



    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0,left: 160),
            child: Text("المواد المسجلة",style: TextStyle(
                fontSize: 30,
                color: Color(0xff04854c),
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 40,),
          buildRows(),
          Container(
            width: 200,
            child: RaisedButton(
              color: Color(0xff054E27),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child:
              Text("ترحيل علامات الطلاب",style: TextStyle(
                  color: Colors.white,fontWeight:FontWeight.bold,fontSize: 16 ),),
              onPressed: (){
int std1_crs_total1=0,std1_crs_total2=0,std1_crs_total3=0,std1_crs_total4=0,std1_crs_total5=0;
int std2_crs_total1=0,std2_crs_total2=0,std2_crs_total3=0,std2_crs_total4=0,std2_crs_total5=0;
print("mid1 :${AdminScreen.mid1}");
for(int i=0;i<5;i++)
  {
    if(i+1==1)
      {
        if(AdminScreen.mid1.elementAt(i)!=""
            && AdminScreen.fin1.elementAt(i)!=""
            && AdminScreen.part1.elementAt(i)!="")
        {
          std1_crs_total1=int.parse(AdminScreen.mid1.elementAt(i))+
              int.parse(AdminScreen.fin1.elementAt(i))+
              int.parse(AdminScreen.part1.elementAt(i));
        }
        if(AdminScreen.mid2.elementAt(i)!=""
            && AdminScreen.fin2.elementAt(i)!=""
            && AdminScreen.part2.elementAt(i)!="")
        {
          std1_crs_total1=int.parse(AdminScreen.mid2.elementAt(i))+
              int.parse(AdminScreen.fin2.elementAt(i))+
              int.parse(AdminScreen.part2.elementAt(i));
        }
      }
    else if(i+1==2)
    {
      if(AdminScreen.mid1.elementAt(i)!=""
          && AdminScreen.fin1.elementAt(i)!=""
          && AdminScreen.part1.elementAt(i)!="")
      {
        std1_crs_total2=int.parse(AdminScreen.mid1.elementAt(i))+
            int.parse(AdminScreen.fin1.elementAt(i))+
            int.parse(AdminScreen.part1.elementAt(i));
      }
      if(AdminScreen.mid2.elementAt(i)!=""
          && AdminScreen.fin2.elementAt(i)!=""
          && AdminScreen.part2.elementAt(i)!="")
      {
        std2_crs_total2=int.parse(AdminScreen.mid2.elementAt(i))+
            int.parse(AdminScreen.fin2.elementAt(i))+
            int.parse(AdminScreen.part2.elementAt(i));
      }
    }
    else if(i+1==3)
    {
      if(AdminScreen.mid1.elementAt(i)!=""
          && AdminScreen.fin1.elementAt(i)!=""
          && AdminScreen.part1.elementAt(i)!="")
      {
        std1_crs_total3=int.parse(AdminScreen.mid1.elementAt(i))+
            int.parse(AdminScreen.fin1.elementAt(i))+
            int.parse(AdminScreen.part1.elementAt(i));
      }
      if(AdminScreen.mid2.elementAt(i)!=""
          && AdminScreen.fin2.elementAt(i)!=""
          && AdminScreen.part2.elementAt(i)!="")
      {
        std2_crs_total3=int.parse(AdminScreen.mid2.elementAt(i))+
            int.parse(AdminScreen.fin2.elementAt(i))+
            int.parse(AdminScreen.part2.elementAt(i));
      }
    }
    else if(i+1==4)
    {
      if(AdminScreen.mid1.elementAt(i)!=""
          && AdminScreen.fin1.elementAt(i)!=""
          && AdminScreen.part1.elementAt(i)!="")
      {
        std1_crs_total4=int.parse(AdminScreen.mid1.elementAt(i))+
            int.parse(AdminScreen.fin1.elementAt(i))+
            int.parse(AdminScreen.part1.elementAt(i));
      }
      if(AdminScreen.mid2.elementAt(i)!=""
          && AdminScreen.fin2.elementAt(i)!=""
          && AdminScreen.part2.elementAt(i)!="")
      {
        std2_crs_total4=int.parse(AdminScreen.mid2.elementAt(i))+
            int.parse(AdminScreen.fin2.elementAt(i))+
            int.parse(AdminScreen.part2.elementAt(i));
      }
    }
    else if(i+1==5)
    {
      if(AdminScreen.mid1.elementAt(i)!=""
          && AdminScreen.fin1.elementAt(i)!=""
          && AdminScreen.part1.elementAt(i)!="")
      {
        std1_crs_total5=int.parse(AdminScreen.mid1.elementAt(i))+
            int.parse(AdminScreen.fin1.elementAt(i))+
            int.parse(AdminScreen.part1.elementAt(i));
      }
      if(AdminScreen.mid2.elementAt(i)!=""
          && AdminScreen.fin2.elementAt(i)!=""
          && AdminScreen.part2.elementAt(i)!="")
      {
        std2_crs_total5=int.parse(AdminScreen.mid2.elementAt(i))+
            int.parse(AdminScreen.fin2.elementAt(i))+
            int.parse(AdminScreen.part2.elementAt(i));
      }
    }
  }


////////////////////////////first student and first course////////////////////////////
late String std1sym1;
if(std1_crs_total1>=90)
  {
    std1sym1="A";
  }
else if(std1_crs_total1>=85)
{
  std1sym1="A-";
}
else if(std1_crs_total1>=80)
{
  std1sym1="B+";
}
else if(std1_crs_total1>=75)
{
  std1sym1="B";
}
else if(std1_crs_total1>=70)
{
  std1sym1="B-";
}
else if(std1_crs_total1>=65)
{
  std1sym1="C+";
}
else if(std1_crs_total1>=60)
{
  std1sym1="C";
}
else if(std1_crs_total1>=55)
{
  std1sym1="C-";
}
else if(std1_crs_total1>=50)
{
  std1sym1="D+";
}
else
{
  std1sym1="F(راسب)";
}

////////////////////////////first student and second course////////////////////////////

                late String std1sym2;
                if(std1_crs_total2>=90)
                {
                  std1sym2="A";
                }
                else if(std1_crs_total2>=85)
                {
                  std1sym2="A-";
                }
                else if(std1_crs_total2>=80)
                {
                  std1sym2="B+";
                }
                else if(std1_crs_total2>=75)
                {
                  std1sym2="B";
                }
                else if(std1_crs_total2>=70)
                {
                  std1sym2="B-";
                }
                else if(std1_crs_total2>=65)
                {
                  std1sym2="C+";
                }
                else if(std1_crs_total2>=60)
                {
                  std1sym2="C";
                }
                else if(std1_crs_total2>=55)
                {
                  std1sym2="C-";
                }
                else if(std1_crs_total2>=50)
                {
                  std1sym2="D+";
                }
                else
                {
                  std1sym2="F(راسب)";
                }

                ////////////////////////////first student and third course////////////////////////////

                late String std1sym3;
                if(std1_crs_total3>=90)
                {
                  std1sym3="A";
                }
                else if(std1_crs_total3>=85)
                {
                  std1sym3="A-";
                }
                else if(std1_crs_total3>=80)
                {
                  std1sym3="B+";
                }
                else if(std1_crs_total3>=75)
                {
                  std1sym3="B";
                }
                else if(std1_crs_total3>=70)
                {
                  std1sym3="B-";
                }
                else if(std1_crs_total3>=65)
                {
                  std1sym3="C+";
                }
                else if(std1_crs_total3>=60)
                {
                  std1sym3="C";
                }
                else if(std1_crs_total3>=55)
                {
                  std1sym3="C-";
                }
                else if(std1_crs_total3>=50)
                {
                  std1sym3="D+";
                }
                else
                {
                  std1sym3="F(راسب)";
                }

                ////////////////////////////first student and forth course////////////////////////////

                late String std1sym4;
                if(std1_crs_total4>=90)
                {
                  std1sym4="A";
                }
                else if(std1_crs_total4>=85)
                {
                  std1sym4="A-";
                }
                else if(std1_crs_total4>=80)
                {
                  std1sym4="B+";
                }
                else if(std1_crs_total4>=75)
                {
                  std1sym4="B";
                }
                else if(std1_crs_total4>=70)
                {
                  std1sym4="B-";
                }
                else if(std1_crs_total4>=65)
                {
                  std1sym4="C+";
                }
                else if(std1_crs_total4>=60)
                {
                  std1sym4="C";
                }
                else if(std1_crs_total4>=55)
                {
                  std1sym4="C-";
                }
                else if(std1_crs_total4>=50)
                {
                  std1sym4="D+";
                }
                else
                {
                  std1sym4="F(راسب)";
                }

                ////////////////////////////first student and fifth course////////////////////////////

                late String std1sym5;
                if(std1_crs_total5>=90)
                {
                  std1sym5="A";
                }
                else if(std1_crs_total5>=85)
                {
                  std1sym5="A-";
                }
                else if(std1_crs_total5>=80)
                {
                  std1sym5="B+";
                }
                else if(std1_crs_total5>=75)
                {
                  std1sym5="B";
                }
                else if(std1_crs_total5>=70)
                {
                  std1sym5="B-";
                }
                else if(std1_crs_total5>=65)
                {
                  std1sym5="C+";
                }
                else if(std1_crs_total5>=60)
                {
                  std1sym5="C";
                }
                else if(std1_crs_total5>=55)
                {
                  std1sym5="C-";
                }
                else if(std1_crs_total5>=50)
                {
                  std1sym5="D+";
                }
                else
                {
                  std1sym5="F(راسب)";
                }


///////////////////////SECOND STUDENT
////////////////////////////second student and first course////////////////////////////



late String std2sym1;
if(std2_crs_total1>=90)
{
  std2sym1="A";
}
else if(std2_crs_total1>=85)
{
  std2sym1="A-";
}
else if(std2_crs_total1>=80)
{
  std2sym1="B+";
}
else if(std2_crs_total1>=75)
{
  std2sym1="B";
}
else if(std2_crs_total1>=70)
{
  std2sym1="B-";
}
else if(std2_crs_total1>=65)
{
  std2sym1="C+";
}
else if(std2_crs_total1>=60)
{
  std2sym1="C";
}
else if(std2_crs_total1>=55)
{
  std2sym1="C-";
}
else if(std2_crs_total1>=50)
{
  std2sym1="D+";
}
else
{
  std2sym1="F(راسب)";
}

////////////////////////////second student and second course////////////////////////////

                late String std2sym2;
                if(std2_crs_total2>=90)
                {
                  std2sym2="A";
                }
                else if(std2_crs_total2>=85)
                {
                  std2sym2="A-";
                }
                else if(std2_crs_total2>=80)
                {
                  std2sym2="B+";
                }
                else if(std2_crs_total2>=75)
                {
                  std2sym2="B";
                }
                else if(std2_crs_total2>=70)
                {
                  std2sym2="B-";
                }
                else if(std2_crs_total2>=65)
                {
                  std2sym2="C+";
                }
                else if(std2_crs_total2>=60)
                {
                  std2sym2="C";
                }
                else if(std2_crs_total2>=55)
                {
                  std2sym2="C-";
                }
                else if(std2_crs_total2>=50)
                {
                  std2sym2="D+";
                }
                else
                {
                  std2sym2="F(راسب)";
                }

                ////////////////////////////second student and third course////////////////////////////

                late String std2sym3;
                if(std2_crs_total3>=90)
                {
                  std2sym3="A";
                }
                else if(std2_crs_total3>=85)
                {
                  std2sym3="A-";
                }
                else if(std2_crs_total3>=80)
                {
                  std2sym3="B+";
                }
                else if(std2_crs_total3>=75)
                {
                  std2sym3="B";
                }
                else if(std2_crs_total3>=70)
                {
                  std2sym3="B-";
                }
                else if(std2_crs_total3>=65)
                {
                  std2sym3="C+";
                }
                else if(std2_crs_total3>=60)
                {
                  std2sym3="C";
                }
                else if(std2_crs_total3>=55)
                {
                  std2sym3="C-";
                }
                else if(std2_crs_total3>=50)
                {
                  std2sym3="D+";
                }
                else
                {
                  std2sym3="F(راسب)";
                }

                ////////////////////////////second student and forth course////////////////////////////

                late String std2sym4;
                if(std2_crs_total4>=90)
                {
                  std2sym4="A";
                }
                else if(std2_crs_total4>=85)
                {
                  std2sym4="A-";
                }
                else if(std2_crs_total4>=80)
                {
                  std2sym4="B+";
                }
                else if(std2_crs_total4>=75)
                {
                  std2sym4="B";
                }
                else if(std2_crs_total4>=70)
                {
                  std2sym4="B-";
                }
                else if(std2_crs_total4>=65)
                {
                  std2sym4="C+";
                }
                else if(std2_crs_total4>=60)
                {
                  std2sym4="C";
                }
                else if(std2_crs_total4>=55)
                {
                  std2sym4="C-";
                }
                else if(std2_crs_total4>=50)
                {
                  std2sym4="D+";
                }
                else
                {
                  std2sym4="F(راسب)";
                }

                ////////////////////////////second student and fifth course////////////////////////////

                late String std2sym5;
                if(std2_crs_total5>=90)
                {
                  std2sym5="A";
                }
                else if(std2_crs_total5>=85)
                {
                  std2sym5="A-";
                }
                else if(std2_crs_total5>=80)
                {
                  std2sym5="B+";
                }
                else if(std2_crs_total5>=75)
                {
                  std2sym5="B";
                }
                else if(std2_crs_total5>=70)
                {
                  std2sym5="B-";
                }
                else if(std2_crs_total5>=65)
                {
                  std2sym5="C+";
                }
                else if(std2_crs_total5>=60)
                {
                  std2sym5="C";
                }
                else if(std2_crs_total5>=55)
                {
                  std2sym5="C-";
                }
                else if(std2_crs_total5>=50)
                {
                  std2sym5="D+";
                }
                else
                {
                  std2sym5="F(راسب)";
                }


double std_grade1=(std1_crs_total1+ std1_crs_total2 +std1_crs_total3 +std1_crs_total4+std1_crs_total5)/5;
double std_grade2=(std2_crs_total1+ std2_crs_total2 +std2_crs_total3 +std2_crs_total4+std2_crs_total5)/5;
double std1_4=std_grade1/25;
double std2_4=std_grade2/25;
setState(() {
  if(LoginScreen.ID=="31801002019")
  StdScreen.grade=std1_4.toString();
  else
    StdScreen.grade=std2_4.toString();
});
for(int i=1;i<6;i++)
{
  if(i==1)
    {

      final doc1User1 = FirebaseFirestore.instance.collection('registered student').doc('31801002019')
          .collection("program")
          .doc('course $i');
      doc1User1.update(
          {
            'total':std1_crs_total1.toString(),
            'sym':std1sym1.toString()
          }
    );

      final doc2User1 = FirebaseFirestore.instance.collection('registered student').doc('31901002003')
          .collection("program")
          .doc('course $i');
      doc2User1.update(
          {
            'total':std2_crs_total1.toString(),
            'sym':std2sym1.toString()
          }
      );

    }
  else if(i==2)
  {
    final doc1User2 = FirebaseFirestore.instance.collection('registered student').doc('31801002019')
        .collection("program")
        .doc('course $i');
    doc1User2.update(
        {
          'total':std1_crs_total2.toString(),
          'sym':std1sym2.toString()
        });

    final doc2User2 = FirebaseFirestore.instance.collection('registered student').doc('31901002003')
        .collection("program")
        .doc('course $i');
    doc2User2.update(
        {
          'total':std2_crs_total2.toString(),
          'sym':std2sym2.toString()
        });

  }
  else if(i==3)
  {
    final doc1User3 = FirebaseFirestore.instance.collection('registered student').doc('31801002019')
        .collection("program")
        .doc('course $i');
    doc1User3.update(
        {
          'total':std1_crs_total3.toString(),
          'sym':std1sym3.toString()
        });
    final doc2User3 = FirebaseFirestore.instance.collection('registered student').doc('31901002003')
        .collection("program")
        .doc('course $i');
    doc2User3.update(
        {
          'total':std2_crs_total3.toString(),
          'sym':std2sym3.toString()
        });
  }
  else if(i==4)
  {
    final doc1User4 = FirebaseFirestore.instance.collection('registered student').doc('31801002019')
        .collection("program")
        .doc('course $i');
    doc1User4.update(
        {
          'total':std1_crs_total4.toString(),
          'sym':std1sym4.toString()
        }
    );
    final doc2User4 = FirebaseFirestore.instance.collection('registered student').doc('31901002003')
        .collection("program")
        .doc('course $i');
    doc2User4.update(
        {
          'total':std2_crs_total4.toString(),
          'sym':std2sym4.toString()
        }
    );
  }
  else if(i==5)
  {
    final doc1User5 = FirebaseFirestore.instance.collection('registered student').doc('31801002019')
        .collection("program")
        .doc('course $i');
    doc1User5.update(
        {
          'total':std1_crs_total5.toString(),
          'sym':std1sym5.toString()
        }
    );
    final doc2User5 = FirebaseFirestore.instance.collection('registered student').doc('31901002003')
        .collection("program")
        .doc('course $i');
    doc2User5.update(
        {
          'total':std2_crs_total5.toString(),
          'sym':std2sym5.toString()
        }
    );
  }

}
                var add=FirebaseFirestore.instance.collection("users");
 add.where("personal_id",isEqualTo: '31801002019').get().then((value) {
  value.docs.forEach((element) {
    var std1=add.doc(element.id).update(
      {
      'grade':std1_4.toString()
      }
    );
  });
});
                 add.where("personal_id",isEqualTo: '31901002003').get().then((value) {
                  value.docs.forEach((element) {
                    var std2=add.doc(element.id).update(
                        {
                          'grade':std2_4.toString()
                        }
                    );
                  });
                });
                Fluttertoast.showToast(msg: "تم رحيل علاما الطلاب");
},

            ),
          ),
          SizedBox(height: 60,),
        ],
      ),
    );
  }
}
