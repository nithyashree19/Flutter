import "package:flutter/material.dart";
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false,home:Scaffold(
      appBar: AppBar(title: Text("Instagram Profile",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white)),
    backgroundColor:  Colors.pink,
    leading:IconButton(icon:Icon(Icons.menu),tooltip: "Menu",onPressed: (){},color: Colors.white,),
    actions: [IconButton(onPressed:(){}, icon:Icon(Icons.search),tooltip:"search",color: Colors.white,),
    IconButton(onPressed: (){}, icon:Icon(Icons.more_vert),tooltip: "More",color: Colors.white,)],),
      backgroundColor: Colors.pink,
      body:ListView(
        children:[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Container(height:170,
        alignment: Alignment.topCenter,
        width: double.infinity,
        padding:EdgeInsets.all(15),
        
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width:2),
          
        ),
        child: CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg"),radius:100),
         
             
          
          
         
          ),
          Container(height: 45,width:double.infinity,
             color: Colors.pink,
            alignment: Alignment.topCenter,
            child:Text("Nithya Shree",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),),),
          
          Container(
          height: 120,
          width: double.infinity,
          color: Colors.pink,
          child: Align( // Correct alignment
            alignment: Alignment.topCenter, 
            child: Container(
        height: 70,
        width: 320, 
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),  color: Colors.white),
            
        alignment: Alignment.center, // Center text inside
        child: Column(
           mainAxisAlignment:MainAxisAlignment.center,
          children: [
           
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: 
        [
          
          Text("      Post  ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)),
          Text(" Followers ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
          Text(" Following ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)),
          
          ],),
          SizedBox(height: 5),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text("20  ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)),
          Text(" 100 ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)),
          Text("150 ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)),],)],
            ),
          ),
        ),),
        Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height:50,width: double.infinity,color: Colors.white,alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left:20,top:10),
        child:Text("Info:",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black)),),
        Container(height:400,width: double.infinity,padding: EdgeInsets.only(left:20,top:5,right: 10),color: Colors.white,child:Text("HelooWelcome to [Your Project/App Name], a smart and hands-free voice assistant designed to simplify your daily tasks with seamless voice commands. Stay productive without lifting a finger!",style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal,color: Colors.black)),)],)
        
        ],),
      ],),),);
  }
}