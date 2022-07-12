import 'package:exr/screens/studscreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:fluttertoast/fluttertoast.dart';

class Finish1 extends StatefulWidget {
  const Finish1({Key? key}) : super(key: key);

  @override
  _Finish1State createState() => _Finish1State();
}

class _Finish1State extends State<Finish1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: (AssetImage("assets/images/bau7.jpg")),
            colorFilter:  ColorFilter.mode(Colors.transparent.withOpacity(0.2), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),),

        child: Container(
          margin: EdgeInsets.only(top: 220),
          child: Column(
            children: [
              Center(
                child:
                Text("انتهى الامتحان وستظهر العلامة بصفحة الطالب",textAlign: TextAlign.center,style: TextStyle(
                    fontSize:30,fontWeight: FontWeight.bold,color:Color(0xff04854c)
                ),),
    ),
              SizedBox(height: 30,),
              Center(
                child: Container(
                  width: 120,
                  child: RaisedButton(
                    color: Color(0xff054E27),
                    child:
                    Text("الانتقال",style: TextStyle(
                        color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25 ),),
                    onPressed: ()async{

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  StdScreen()),
                      );
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
  }
}
