import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
 class MyApp extends StatefulWidget
 {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Mainstate();
  }  
 }
class Mainstate extends State<MyApp>
{
  String a="";
  String b="NoText";
  List<String> l1=[];
  TextEditingController textControl=TextEditingController();
  void onchange(String value)
  {
    setState(() {
       a=value;
    });
   
  }
  void onsubmit(String value)
  {
    setState(() {
      b=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title:Text("TODO APP",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),backgroundColor: Colors.blue,),
      body:Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
              
               Row(children: [
               
              Expanded(
                
                child: TextField(controller: textControl,decoration: InputDecoration(border:OutlineInputBorder(),
                labelText: "TaskBar",hintText: "Enter Task",),onChanged:onchange,onSubmitted: onsubmit,),
              ),

              Padding(
                 padding: EdgeInsets.only(left: 10),
                child: MaterialButton(child: Text("Add"),
                height:50,
                color: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onPressed:()
                  {
                    setState(() {
                    l1.add(textControl.text);
                    textControl.clear();
                    });
                    
                  }),
              )],),
           
             SizedBox(height: 10,),
              Flexible(
                child: ListView.builder(itemCount: l1.length,itemBuilder: (context,index){
                        return  Row(children: [
                  Expanded(child:Container( padding: EdgeInsets.all(10),decoration: BoxDecoration(color:Colors.blueAccent,borderRadius: BorderRadius.circular(10)),child:Text(l1[index],style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w800),),))
                 ,
                  MaterialButton(onPressed: (){
                    setState(() {
                      l1.removeAt(index);
                    });
                  },child:Icon(Icons.delete,color: Colors.red,),)
                ],);
                }
                ),
              )
          ],
        ),
      ),)
           
        
    
    );
  }
}