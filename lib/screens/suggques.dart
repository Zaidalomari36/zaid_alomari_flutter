import 'package:exr/screens/arabic.dart';
import 'package:exr/screens/compskills.dart';
import 'package:exr/screens/english.dart';
import 'package:flutter/material.dart';

class SuggestionsQuestions extends StatefulWidget {

  @override
  _SuggestionsQuestionsState createState() => _SuggestionsQuestionsState();
}

class _SuggestionsQuestionsState extends State<SuggestionsQuestions> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor:Color(0xff04854c),
          title: Text("أسئلة مقترحة",style: TextStyle(fontWeight: FontWeight.bold),),
          bottom:
          TabBar(
          tabs: [
            Tab(child: Text("اللغة العربية",style: TextStyle(fontWeight: FontWeight.bold),),),
            Tab(child: Text("اللغة الانجليزية",style: TextStyle(fontWeight: FontWeight.bold),),),
            Tab(child: Text("مهارات الحاسوب",style: TextStyle(fontWeight: FontWeight.bold),),),
          ],
          ),
        ),
        body: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: (AssetImage("assets/images/bau7.jpg")),
              colorFilter:  ColorFilter.mode(Colors.transparent.withOpacity(0.25), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),),
          child: TabBarView(
            children: [
              Arabic(),
              English(),
              ComputerSkills()
            ],
          ),
        ),
      ),
    );
  }
}
