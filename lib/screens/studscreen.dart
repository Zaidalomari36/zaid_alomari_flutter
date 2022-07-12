import 'package:exr/screens/loginscreen.dart';
import 'package:exr/screens/stdexams.dart';
import 'package:exr/screens/stdgrade.dart';
import 'package:exr/screens/stdplan.dart';
import 'package:exr/screens/stdprogram.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:exr/screens/studinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class StdScreen extends StatefulWidget {
  static String arabName="",engName="",id="",std_id="",status="",placOfBirth="";
  static String course1="",course2="",course3="",course4="",course5="";
  static String days1="",days2="",days3="",days4="",days5="";
  static String time1="",time2="",time3="",time4="",time5="";
  static String hall1="",hall2="",hall3="",hall4="",hall5="";
  static String mid1="",mid2="",mid3="",mid4="",mid5="";
  static String fin1="",fin2="",fin3="",fin4="",fin5="";
  static String par1="",par2="",par3="",par4="",par5="";
  static String grad1="",grad2="",grad3="",grad4="",grad5="";
  static String sym1="",sym2="",sym3="",sym4="",sym5="";
  static String midRes="",finRes="";
  static String grade="";

  @override
  _StdScreenState createState() => _StdScreenState();
}

class _StdScreenState extends State<StdScreen> {
  var done=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");

  final _auth=FirebaseAuth.instance;


  readProgram()async{
    var courses=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");
for(int i=1;i<6;i++)
  {
    await courses.where("course num",isEqualTo: "$i").get().then((value){
      value.docs.forEach((element) {
        if(i==1)
          {
            StdScreen.course1=element.data()["course name"];
            StdScreen.days1=element.data()['days'];
            StdScreen.time1=element.data()['time'];
            StdScreen.hall1=element.data()['halls'];
            StdScreen.grad1=element.data()['total'];
            StdScreen.sym1=element.data()['sym'];
          }
        else if(i==2)
        {
          StdScreen.course2=element.data()["course name"];
          StdScreen.days2=element.data()['days'];
          StdScreen.time2=element.data()['time'];
          StdScreen.hall2=element.data()['halls'];
          StdScreen.grad2=element.data()['total'];
          StdScreen.sym2=element.data()['sym'];
        }
        else if(i==3)
        {
          StdScreen.course3=element.data()["course name"];
          StdScreen.days3=element.data()['days'];
          StdScreen.time3=element.data()['time'];
          StdScreen.hall3=element.data()['halls'];
          StdScreen.grad3=element.data()['total'];
          StdScreen.sym3=element.data()['sym'];

        }
        else if(i==4)
        {
          StdScreen.course4=element.data()["course name"];
          StdScreen.days4=element.data()['days'];
          StdScreen.time4=element.data()['time'];
          StdScreen.hall4=element.data()['halls'];
          StdScreen.grad4=element.data()['total'];
          StdScreen.sym4=element.data()['sym'];

        }
        else
        {
          StdScreen.course5=element.data()["course name"];
          StdScreen.days5=element.data()['days'];
          StdScreen.time5=element.data()['time'];
          StdScreen.hall5=element.data()['halls'];
          StdScreen.grad5=element.data()['total'];
          StdScreen.sym5=element.data()['sym'];

        }
      });
    });

  }

double totlgrds=0;
int count=1;
while(count<6)
  {
    if(count==1)
      totlgrds+=double.parse(StdScreen.grad1);
    else if(count==2)
      totlgrds+=double.parse(StdScreen.grad2);
    else if(count==3)
      totlgrds+=double.parse(StdScreen.grad3);
    else if(count==4)
      totlgrds+=double.parse(StdScreen.grad4);
    else if(count==5)
      totlgrds+=double.parse(StdScreen.grad5);
    count++;
  }
  totlgrds=totlgrds/5;
    totlgrds=totlgrds/25;

setState(() {
  StdScreen.grade=totlgrds.toStringAsFixed(2).toString();
});
    var ref=FirebaseFirestore.instance.collection("users");
    await ref.where("personal_id",isEqualTo: LoginScreen.ID).get().then((value){
      value.docs.forEach((element) {
        ref.doc(element.id).update(
          {
          'grade': StdScreen.grade
          }
        );
      });
    });


  }
  readGrades()async{
    var courses=FirebaseFirestore.instance.collection("registered student").doc(LoginScreen.ID).collection("program");
    for(int i=1;i<6;i++)
    {
      await courses.where("course num",isEqualTo: "$i").get().then((value){
        value.docs.forEach((element) {
          if(i==1) {
            StdScreen.mid1=element.data()["mid"];
            StdScreen.fin1=element.data()['final'];
            StdScreen.par1=element.data()['participation mark'];
          }
          else if(i==2)
          {
            StdScreen.mid2=element.data()["mid"];
            StdScreen.fin2=element.data()['final'];
            StdScreen.par2=element.data()['participation mark'];
          }
          else if(i==3)
          {
            StdScreen.mid3=element.data()["mid"];
            StdScreen.fin3=element.data()['final'];
            StdScreen.par3=element.data()['participation mark'];
          }
          else if(i==4)
          {
            StdScreen.mid4=element.data()["mid"];
            StdScreen.fin4=element.data()['final'];
            StdScreen.par4=element.data()['participation mark'];
          }
          else
          {
            StdScreen.mid5=element.data()["mid"];
            StdScreen.fin5=element.data()['final'];
            StdScreen.par5=element.data()['participation mark'];
          }
        });
      });
    }

    ///get done value
    if(StdScreen.course1=="مقدمة لبرمجة الحاسوب") {

      done.where("course name", isEqualTo: StdScreen.course1).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.don1 = element.data()['done'];
          });
        });
      });
    }
    else if(StdScreen.course2=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course2).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.don1 = element.data()['done'];
          });
        });
      });
    }
    else if(StdScreen.course3=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course3).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.don1 = element.data()['done'];
          });
        });
      });
    }
    else if(StdScreen.course4=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course4).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.don1 = element.data()['done'];
          });
        });
      });
    }
    else if(StdScreen.course5=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course5).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.don1 = element.data()['done'];
          });
        });
      });
    }


    ///get findone value
    if(StdScreen.course1=="مقدمة لبرمجة الحاسوب") {

      done.where("course name", isEqualTo: StdScreen.course1).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.donf = element.data()['donefin'];
          });
        });
      });
    }
    else if(StdScreen.course2=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course2).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.donf = element.data()['donefin'];
          });
        });
      });
    }
    else if(StdScreen.course3=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course3).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.donf = element.data()['donefin'];
          });
        });
      });
    }
    else if(StdScreen.course4=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course4).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.donf = element.data()['donefin'];
          });
        });
      });
    }
    else if(StdScreen.course5=="مقدمة لبرمجة الحاسوب") {
      done.where("course name", isEqualTo: StdScreen.course5).get().then((value) {
        value.docs.forEach((element) {
          setState(() {
            StdExams.donf = element.data()['donefin'];
          });
        });
      });
    }



    courses.where("course name",isEqualTo: "مقدمة لبرمجة الحاسوب").get()
    .then((value) {
      value.docs.forEach((element) {
        StdScreen.midRes=element.data()["mid"];
        StdScreen.finRes=element.data()['final'];
      });
    });
  }

  readInfo()async{
    var std=FirebaseFirestore.instance.collection('users');
await std.where("std_id",isEqualTo: LoginScreen.ID).get().then((value)
{
  value.docs.forEach((element) {
    setState(() {
      StdScreen.arabName=element.data()['name'];
      StdScreen.engName=element.data()['EngName'];
      StdScreen.id=element.data()['id'];
      StdScreen.std_id=element.data()['std_id'];
      StdScreen.status=element.data()['status'];
      StdScreen.placOfBirth=element.data()['place of birth'];
    });
  });
}
);
  }


  @override
  void initState() {
    // TODO: implement initState
    readInfo();
    readGrades();
    readProgram();



  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 4,
    child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xff04854c),
        title: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:  EdgeInsets.only(right: 10.0),
              child: Text("صفحة الطالب",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            IconButton(onPressed: ()async{
              await _auth.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LoginScreen()),
              );
            }, icon:Icon(Icons.logout) )
          ],),
      bottom: TabBar(
        tabs: [
          Tab(child:  Text("الامتحانات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.5),),
          ),
          Tab(child:  Text("الخطة ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Tab(child: Text("كشف العلامات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Tab(child:Text("البرنامج",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Tab(child:Center(child: Text("معلومات الطالب",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)),
          ),],
      ),
      ),
      body: Container(
              decoration:  BoxDecoration(
                image: DecorationImage(
                    image: (AssetImage("assets/images/bau7.jpg")),
                  colorFilter:  ColorFilter.mode(Colors.transparent.withOpacity(0.22), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),),
            child: TabBarView(
              children: [
                StdExams(),
                StdPlan(),
                StrGrade(),
                StudProgram(),
                StudInfo(),
              ],),),
    ));
  }}
