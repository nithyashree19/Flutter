import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner:false,home:Scaffold(appBar: AppBar(title: Text("WhatsApp"),
    backgroundColor: Colors.greenAccent,
    leading:IconButton(icon:Icon(Icons.menu),tooltip: "Menu",onPressed: (){},),
    actions: [IconButton(onPressed:(){}, icon:Icon(Icons.search),tooltip:"search"),
    IconButton(onPressed: (){}, icon:Icon(Icons.more_vert),tooltip: "More",)],),
    body:Column(children: [Container(child:Center(child:Padding(
      padding: EdgeInsets.all(10),
       child:CircleAvatar(radius: 90,backgroundColor: Colors.pink,
       child: CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg"),radius:80),
       
       ),),),),
       Padding(padding:EdgeInsets.all(10)),
       Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(3),
        child:TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.people_alt_rounded),labelText:"Enter profile",hintText: "ProfileName",border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),)),
       Container(padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(3),
        child:TextField(decoration: InputDecoration(prefixIcon:Icon(Icons.album_outlined),labelText: "About",hintText: "About",border:OutlineInputBorder(borderRadius: BorderRadius.circular(8))),))
       ,Container(padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(10),child:Center( child: ElevatedButton(style:ElevatedButton.styleFrom(foregroundColor: Colors.black87,
          textStyle: TextStyle(fontSize: 20),backgroundColor: Colors.greenAccent),onPressed: (){},
           child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold),),)),),
       ],
       )
      ),
    );
  }
}