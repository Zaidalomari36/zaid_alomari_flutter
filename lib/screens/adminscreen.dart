import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'courses.dart';
import 'empinfo.dart';
import 'loginscreen.dart';

class AdminScreen extends StatefulWidget {
  static String arabName="",engName="",id="",jobt="",course1="",
      course2="",course3="",course4="",course5="",course6="",course7="",course8="",course9="",course10="";
 static var list=[],std1courses=[],std2courses=[],mid1=[],mid2=[],fin1=[],fin2=[],part1=[],part2=[];

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final _auth=FirebaseAuth.instance;

  readInfo()async{
    var std=FirebaseFirestore.instance.collection('users');
    await std.where("personal_id",isEqualTo: LoginScreen.ID).get().then((value)
    {
      value.docs.forEach((element) {
        setState(() {
          AdminScreen.arabName=element.data()['arabic_name'];
          AdminScreen.engName=element.data()['eng_name'];
          AdminScreen.id=element.data()['id'];
          AdminScreen.jobt=element.data()['Job title'];
        });
      });
    }
    );
  }



  readStdCourses()async{
    var ref1=FirebaseFirestore.instance.collection("registered student")
        .doc('31801002019').collection("program");
    for(int i=1;i<6;i++)
      {
       await ref1.where('course num',isEqualTo:i.toString()).get().then((value)
        {
          value.docs.forEach((element) {
           AdminScreen.std1courses.add(element.data()['course name']);
            AdminScreen.mid1.add(element.data()['mid']);
            AdminScreen.fin1.add(element.data()['final']);
            AdminScreen.part1.add(element.data()['participation mark']);
          });
        }
        );
      }
    var ref2=FirebaseFirestore.instance.collection("registered student")
        .doc('31901002003').collection("program");
    for(int i=1;i<6;i++)
    {
     await ref2.where('course num',isEqualTo:i.toString()).get().then((value)
      {
        value.docs.forEach((element) {
          AdminScreen.std2courses.add(element.data()['course name']);
          AdminScreen.mid2.add(element.data()['mid']);
          AdminScreen.fin2.add(element.data()['final']);
          AdminScreen.part2.add(element.data()['participation mark']);
        });
      }
      );
    }
  }

  readCourses()async{
    var add=FirebaseFirestore.instance.collection("users");
    await add.where("category",isEqualTo: 'employee').get().then((value){
     value.docs.forEach((element) {
       for(int i=0;i<5;i++)
         {
           if(i+1==1)
             {
               AdminScreen.course1=element.data()["31801002019 ${i+1}"];
               AdminScreen.course6=element.data()["31901002003 ${i+1}"];
             }
           else if(i+1==2)
           {
             AdminScreen.course2=element.data()["31801002019 ${i+1}"];
             AdminScreen.course7=element.data()["31901002003 ${i+1}"];
           }
           else if(i+1==3)
           {
             AdminScreen.course3=element.data()["31801002019 ${i+1}"];
             AdminScreen.course8=element.data()["31901002003 ${i+1}"];
           }
           else if(i+1==4)
           {
             AdminScreen.course4=element.data()["31801002019 ${i+1}"];
             AdminScreen.course9=element.data()["31901002003 ${i+1}"];
           }
           else if(i+1==5)
           {
             AdminScreen.course5=element.data()["31801002019 ${i+1}"];
             AdminScreen.course10=element.data()["31901002003 ${i+1}"];
           }
         }

      /* for(int i=1;i<11;i++){
         if(i==1)
           {
             if(!AdminScreen.list.contains(AdminScreen.course1))
               {AdminScreen.list.add(AdminScreen.course1);}
           }
       else if(i==2)
         {
           if(!AdminScreen.list.contains(AdminScreen.course2))
           {AdminScreen.list.add(AdminScreen.course2);}
         }
         else if(i==3)
         {
           if(!AdminScreen.list.contains(AdminScreen.course3))
           {AdminScreen.list.add(AdminScreen.course3);}
         }
         else if(i==4)
         {
           if(!AdminScreen.list.contains(AdminScreen.course4))
           {AdminScreen.list.add(AdminScreen.course4);}
         }
         else if(i==5)
         {
           if(!AdminScreen.list.contains(AdminScreen.course5))
           {AdminScreen.list.add(AdminScreen.course5);}
         }
         else if(i==6)
         {
           if(!AdminScreen.list.contains(AdminScreen.course6))
           {AdminScreen.list.add(AdminScreen.course6);}
         }
         else if(i==7)
         {
           if(!AdminScreen.list.contains(AdminScreen.course7))
           {AdminScreen.list.add(AdminScreen.course7);}
         }
         else if(i==8)
         {
           if(!AdminScreen.list.contains(AdminScreen.course8))
           {AdminScreen.list.add(AdminScreen.course8);}
         }
         else if(i==9)
         {
           if(!AdminScreen.list.contains(AdminScreen.course9))
           {AdminScreen.list.add(AdminScreen.course9);}
         }
         else if(i==10)
         {
           if(!AdminScreen.list.contains(AdminScreen.course10))
           {AdminScreen.list.add(AdminScreen.course10);}
         }
       }*/

     });
    });


  }

 // readRegCourses()
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readInfo();
    readCourses();
    readStdCourses();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar:
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor:Color(0xff04854c),
            title: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 10.0),
                  child: Text("صفحة الموظف",style: TextStyle(fontWeight: FontWeight.bold),),
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
                Tab(child:Text("المواد المسجلة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Tab(child:Center(child: Text("معلومات الموظف",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)),
                ),],
            ),),
          body: Container(
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: (AssetImage("assets/images/bau7.jpg")),
                colorFilter:  ColorFilter.mode(Colors.transparent.withOpacity(0.25), BlendMode.dstATop),
                fit: BoxFit.cover,
              ),),
            child: TabBarView(
              children: [
                Courses(),
                EmpInfo(),

              ],),),
        ));
  }
}
