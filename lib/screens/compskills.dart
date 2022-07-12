import 'package:flutter/material.dart';

class ComputerSkills extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 15),
child: Column(
  children: [
    SizedBox(height: 10,),
    Row(
      children: [
        Text(
          "1- The default file name for a ",style: TextStyle(
          fontSize: 18,),
        ),
        Text(
          "new file in Word :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- Text1 ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- Document1 ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("C- presentation1 ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- book1 ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "2- The CHART command is: ",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 40,left:35 ),
      width: 480,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- Adding cells ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- Command used to add shadow and color to a table",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- A command used to add and create charts for specific data",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("D- Adding a table to data ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "3- Where is the operating system stored ?",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- floppy disk ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- Hard Disk",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("C- A+B",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- None of the above",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "4- The information stored on the CD is :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- non-volatile ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("B- volatile",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- encoded",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- None of the above",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "5- Coaxial wires are faster in transmitting",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Row(
      children: [
        Text(
          "data compared to :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- Optical fiber ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- microwave waves",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- phone lines",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("D- All previous options are correct",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "6- The smallest unit of information that ",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Row(
      children: [
        Text(
          "can be stored in the main computer memory is :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- nibble ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- byte",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- bit",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("D- mega",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "7- The login remote service is called : ",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- FTP ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- TELNET",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("C- E-MAIL",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- TCP",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "8- The IDE connector and FDD connector are : ",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- external disks ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- data cable",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("C- disc connectors",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- disc players",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "9- Which of the following is a computer",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Row(
      children: [
        Text(
          " program ?",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- electronic scales ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- desktop publisher",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- Windows",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("D- None of the above",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "10- Erasable and programmable read-only",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Row(
      children: [
        Text(
          " memory :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- PROM ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- EPROM",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("C- EEPROM",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- Flash memory",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "11- Which of the following statements is correct :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 100),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- Digital camera has no memory ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B- The screen can be an input unit",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("C- The scanner is an output unit",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- It is not possible to connect more",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          Text("than one printer on one computer",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),

        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "12- The operating system is an example of :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 100),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- software group ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("B-equipment set",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- Application software group",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- All of what was mentioned is correct",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "13- The function responsible for",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Row(
      children: [
        Text(
          "finding the number of numeric cells is :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 100),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- SUM ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B-MAX",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- COUNTA",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- COUNT",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "14- Number of rows in an Excel spreadsheet :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 100),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- 65356 ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B-65563",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("C- 65536",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- infinite",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),
    Row(
      children: [
        Text(
          "15- High level programming languages :",style: TextStyle(
          fontSize: 18,),
        ),
      ],

    ),
    Container(
      margin: EdgeInsets.only(right: 100),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("A- very far from human language ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("B-close to human language",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Color(0xff04854c)
          ),),
          SizedBox(height:5,),
          Text("C- It is called machine language",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
          SizedBox(height:5,),
          Text("D- It is called the Simple language",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color :Colors.black
          ),),
        ],
      ),
    ),
    Center(
      child: SizedBox(height: 50,width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),),
    ),

  ],
),
      ),
    );
  }
}
