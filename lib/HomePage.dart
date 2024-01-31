import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_class/widget/circle_container.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _selectedIndex = 0;
   //int index=5;

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56.0),
          child: Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[300]!))),
        child: AppBar(title:Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('RAJAGIRI PUBLIC SCHOOL',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
        ),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
      )),

      body: ListView(
        children: [

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
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Container(
                                height: height/10,
                                width:width/5,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Assets/book2.png'))),),
                            ),
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
    ),])
    ,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Exams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Fees',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor:  Colors.grey, // Set default icon color to grey
        showUnselectedLabels: true,
        selectedItemColor: Color(0xFF2a4f9c), // Set pressed icon color to violet
        // unselectedLabelStyle: TextStyle(color: Colors.grey), // Set default label color to grey
        // selectedLabelStyle: TextStyle(color: Colors.purple),
        // Set selected label color to violet
        onTap: _onItemTapped,
      ),);

  }

   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }
}
