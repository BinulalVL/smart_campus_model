import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_class/widget/circle_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: ListView(
        children: [
          AppBar(title:Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('RAJAGIRI PUBLIC SCHOOL',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          ),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Smart Campus',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.notifications),
              )
            ],
          ),
          Container(
            height: height/5.8,
     //        color: Colors.yellow,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0,bottom: 12,left: 15,right: 15),
                    child: Container(
                      width: width/1.10,
                     // color: Colors.blue,
                      height: height/8,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Assets/download.jpeg'),fit:BoxFit.fill),borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),

                  ),
                ),
                Positioned(
                  left: width/8,
                 // top: height/200,
                  child: Container(
                    height: height/13,
                    width: height/13,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Assets/music-3472184_1280.jpg')),borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
                Positioned(left: width/10,top:height/13,child: Text('Joseph Xavier',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)),
                Positioned(left: width/10,top:height/9,
                  child: Row(
                    children: [
                      Text('Batch Name:',style: TextStyle(color: Colors.white,fontSize: 15),),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('V A',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),),
                      ),Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 1,
                          height: 15,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Adm No:',style: TextStyle(color: Colors.white,fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('AB2435',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height/7,
            // color: Colors.green,
            decoration: BoxDecoration(color: Colors.white,border: Border(bottom: BorderSide( width: 1,color: Colors.grey[300]!))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,top: 12),
                  child: Text('Attendance',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularContainer(color: Color(0xFFb1c6ff),text:'M'),
                    CircularContainer(color: Color(0xFFffdad6),text: 'T',),
                    CircularContainer(color: Color(0xFFb1c6ff),text: 'W',),
                    CircularContainer(color: Color(0xFFb1c6ff),text: 'Th',),
                    CircularContainer(color:  Color(0xFFe1e2ec),text: 'F',),
                    CircularContainer(color:  Color(0xFFe1e2ec),text: 'Sa',),
                  ],

                )
              ],
            ),
          ),
          Container(
            height: height/2.5,
         //`  color: Colors.yellow,
            child: Row(
              children: [
                Container(
                 // color:Colors.green,
                width: width/2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 4,top: 8),
                      child: Container(
                        width: width/1.6,
                        height:height/9,

                        decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!),borderRadius:BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF395ba9), ),
                        child: Row(
                          children: [
                            Container(
                              height: height/15,
                              width:width/5,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Assets/books.png'))),),
                            Column(mainAxisAlignment: MainAxisAlignment.start,children:[ Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text('Subjects',style: TextStyle( color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                            )])
                          ],
                        ),
                      ),
                    ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 4,top: 8),
              child: Container(
                width: width/1.6,
                height:height/4,

                decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!),borderRadius:BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFF001946), ),)
                    )
                  ],
                ),
              ),Container(
                  // color:Colors.blue,
              width: width/2,child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 4.0,right: 8,top: 8),
                        child: Container(
                          width: width/1.6,
                          height:height/4,

                          decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!),borderRadius:BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFFb1c6ff), ),)
                    ),
    Padding(
    padding: const EdgeInsets.only(left: 4.0,right: 8,top: 8),
    child: Container(
    width: width/1.6,
    height:height/9,

    decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!),borderRadius:BorderRadius.all(Radius.circular(20)),
    color: Color(0xFF2a4f9c), ),))
                  ],
            ),
          )
        ],
      ),
    ),]));
  }
}
