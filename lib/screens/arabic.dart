import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arabic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.end ,
          children: [
            SizedBox(height: 10,),
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: ": ’١-  جاءت (لا) في جملة ’",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  TextSpan(
                      text: "لا يهمل أحمد دروسه  ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                ])),
          SizedBox(height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
children: [
  Text("أ- لا النافية",style: TextStyle(fontSize: 18,
        color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
  SizedBox(width: 15,),
  Text("ب- لا التاهية",style: TextStyle(fontSize: 18,
        color:Colors.black,fontWeight: FontWeight.bold ),),
  SizedBox(width: 15,),
  Text("ج- لا الجازمة",style: TextStyle(fontSize: 18,
        color:Colors.black,fontWeight: FontWeight.bold ),),
  SizedBox(width: 15,),
  Text("د-أ+ج",style: TextStyle(fontSize: 18,
        color:Colors.black,fontWeight: FontWeight.bold ),),
],
          ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
thickness: 1,
                ),),
            ),
            Container(
              margin: EdgeInsets.only(right: 33),
              child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: " : ٢- علامة اعراب كلمة(أخي) في ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "(اذهب الى أخي في عمله)",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        TextSpan(
                          text: " هي ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                  ])),
            ),
            SizedBox(height: 10,),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- الياء",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 8,),
                Text("ب- الكسرة الظاهرة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 8,),
                Text("ج- الضمة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 8,),
                Text("د-الكسرة المقدرة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),

            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "٣- إعراب كلمة (الاخرة) في الاية الكريمة ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "{وللاخرة خير لك من",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                      ])),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: ": الاولى} ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                              fontWeight: FontWeight.bold

                          ),
                        ),
                        TextSpan(
                          text: "هو",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),

                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ-اسم مجرور",style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,color: Colors.black ),),
                SizedBox(width: 15,),
                Text("ب-خبر مبتدأ محذوف",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold,),),
                SizedBox(width: 15,),
                Text("ج-اسم لا",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("د-مبتدأ",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "٤- علامة الترقيم التي نضعها في نهاية الجملة التالية ",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                  ),
                        ),
                        TextSpan(
                          text: "{تأمرون",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ])),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: ": الناس بالبر و تنسون أنفسكم}",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold

                          ),
                        ),
                        TextSpan(
                          text: "هي",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("(.)-أ",style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,color: Colors.black ),),
                SizedBox(width: 15,),
                Text("(?)-ب",style: TextStyle(fontSize: 18,
                  color:Colors.black,fontWeight: FontWeight.bold,),),
                SizedBox(width: 15,),
                Text("(!)-ج",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("(!?)-د",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Text(": ٥- من الافعال الخمسة ",style: TextStyle(fontSize: 19,color: Colors.black,),),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- يقولون",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("ب- قالو",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("ج- قائلون",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("د-قولوا",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child:
              RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "٦- كلمة ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "محبوب",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                          ),
                        ),
                        TextSpan(
                       text: " من الناحية الصرفية في قولنا :",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),
                        TextSpan(
                            text:"المجتهد محبوب",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffb72238),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- اسم مكان",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("ب- اسم زمان",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("ج- اسم مفعول",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("د-اسم فاعل",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: ": ٧- الجملة الصحيحة هي ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ])),
            ),
            Container(
              margin:EdgeInsets.only(right: 30) ,
              child: Text("أ- عثمان بن عفان من الخلفاء الراشدين",style: TextStyle(fontSize: 18,
                  color:Colors.black,fontWeight: FontWeight.bold ),),
            ),
            SizedBox(width: 15,),
            Container(
              margin:EdgeInsets.only(right: 10) ,
              child: Text("ب- رأيت سعاد في المدينة",style: TextStyle(fontSize: 18,
                  color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
            ),
            SizedBox(width: 15,),
            Text("ج- لكلاهما شهرة واسعة",style: TextStyle(fontSize: 18,
                color:Colors.black,fontWeight: FontWeight.bold ),),
            SizedBox(width: 15,),
            Container(
              margin:EdgeInsets.only(right: 28) ,
              child: Text("د-مررت بكلى الرجلين",style: TextStyle(fontSize: 18,
                  color:Colors.black,fontWeight: FontWeight.bold ),),
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        //أعباء
                        TextSpan(
                          text: ": ٨- الكلمة الصحيحة المفرد جمع تكسير  ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "أعباء ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                      ])),
            ),
            SizedBox(width: 15,),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- عبأ",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ب- عبئ",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ج- عبء",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("د- عبؤ",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: ": ٩- الفعل اللازم ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        TextSpan(
                          text: " فيما يلي ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                      ),
                        ),
                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- قال",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ب- كتب",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ج- استراح",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("د- زرع",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "١٠- كلمة مما يلي وقع في خطأ إملائي : ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: " فيما يلي ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- عبء",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ب- جزء",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ج- متفاءل",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("د- فئة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "١١- مصدر الفعل",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: " ضع",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- ضياع",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ب-  ضائع",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ج- وضع",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("د- ضاع",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "١٢- السماء جميلة عندما تصفو,نوع  ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "ما",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        TextSpan(
                          text: " هنا ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- موصولة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ب- زائدة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ج- مصدرية",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("د- تعجبية",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              //، إعراب كلمة
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "١٣- من حسن إسلام المرء تركه ما لا يعني ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        TextSpan(
                          text: "، إعراب كلمة",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),

                      ])),
            ),
            Text(" (تركه) ",
  style: TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold

  ),),
            Text("أ- مبتدأ مرفوع",style: TextStyle(fontSize: 18,
                color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
            SizedBox(height: 10,),
            Text("ب-  خبر مرفوع",style: TextStyle(fontSize: 18,
                color:Colors.black,fontWeight: FontWeight.bold ),),
            SizedBox(height: 10,),
            Text("ج- نعت مرفوع",style: TextStyle(fontSize: 18,
                color:Colors.black,fontWeight: FontWeight.bold ),),
            SizedBox(height: 10,),
            Text("د- فعل مرفوع",style: TextStyle(fontSize: 18,
                color:Colors.black,fontWeight: FontWeight.bold ),),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "١٤- علامة جزم الفعل المضارع ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "( لا تلعب وحدكم )",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- السكون",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("ب- حذف حرف العلة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("ج- حذف النون",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 15,),
                Text("د- الالف",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),),
            ),
            Container(
              margin:EdgeInsets.only(right: 15) ,
              child: RichText(
                  text:
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "١٥-جميع الصفات الآتية ممنوع من الصرف إلا واحدة",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          ),
                        ),
                      ])),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("أ- احسن",style: TextStyle(fontSize: 18,
                    color:Color(0xff04854c),fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ب- حيران",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("ج- صفراء",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(width: 20,),
                Text("د- ارملة",style: TextStyle(fontSize: 18,
                    color:Colors.black,fontWeight: FontWeight.bold ),),
              ],
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
