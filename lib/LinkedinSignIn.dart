import "package:flutter/material.dart";
void main()
{
  runApp(Myapp());
}
class Myapp extends StatefulWidget
{
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool eye=true;

  @override
  Widget build(BuildContext context) {
   return MaterialApp(home:Scaffold(appBar: AppBar(title: Text("Linked In",style: TextStyle(color:Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
   ),
   body:Column(
  
     children: [
        
       Container(
        height: 400,
        width: 400,
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),boxShadow: [BoxShadow(color:Colors.white,spreadRadius: 10,blurRadius: 7)]),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("Sign In",style: TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
             ),
             
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text("Stay updated on your professional world",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
             ),
             SizedBox(height: 7,),
             TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Email or Phone"),),
             SizedBox(height: 7,),
             TextField(obscureText: eye,decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Password",suffixIcon: IconButton(icon:Icon(eye?Icons.visibility_off:Icons.visibility),onPressed: (){
              setState(() {
                eye=!eye;
             });
             
             },))),
              SizedBox(height: 10,),
             Text("Forgot Password?",style: TextStyle(color:Colors.blueAccent,fontSize: 15,fontWeight: FontWeight.bold,)),
              SizedBox(height: 7,),
             MaterialButton(height:45,minWidth:double.infinity,onPressed: (){},color:Colors.blueAccent,child:Text("Sign in",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              SizedBox(height: 10,),
             Row(children: [
              Expanded(child: Divider(
                thickness: 1,
                color: Colors.blueGrey,
              )),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Text("or",style: TextStyle(color:Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.bold),),),
               Expanded(child: Divider(
                thickness: 1,
                color: Colors.blueGrey,
              ))
             ],),
              SizedBox(height: 10,),
              Expanded(child:SizedBox(width:double.infinity,child: OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),child:Text("Sign in with Apple",style: TextStyle(color: Colors.black),)), ),
               ) ,
               
         
           ],
         ),
       ),
       Center(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Text("New to LinkedIn?  ",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            Text("Join Now",style: TextStyle(color:Colors.blueAccent,fontSize: 15,fontWeight: FontWeight.bold),)
          ],
         ),
       )
     ],
   )

   ));
  }
}