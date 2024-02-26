import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:project_class/widget/circle_container.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }
  //int index=5;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300]!))),
            child: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'RAJAGIRI PUBLIC SCHOOL',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
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
      body: Column(
        children: [
          Container(
            height: height / 5.8,
            //     color: Colors.yellow,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12, left: 15, right: 15),
                    child: Container(
                      width: width / 1.10,
                      // color: Colors.blue,
                      height: height / 8,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/Assets/download.jpeg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
                Positioned(
                  left: width / 8,
                  // top: height/200,
                  child: Container(
                    height: height / 13,
                    width: height / 13,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'lib/Assets/music-3472184_1280.jpg')),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
                Positioned(
                    left: width / 10,
                    top: height / 13,
                    child: Text(
                      'Joseph Xavier',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                Positioned(
                  left: width / 10,
                  top: height / 9,
                  child: Row(
                    children: [
                      Text(
                        'Batch Name:',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'V A',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 1,
                          height: 15,
                          color: Colors.white

                          ,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Adm No:',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'AB2435',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: ListView(children: [
              Container(
                height: height / 9.3,
                // color: Colors.green,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Colors.grey[300]!))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 4),
                      child: Text(
                        'Attendance',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircularContainer(color: Color(0xFFb1c6ff), text: 'M'),
                        CircularContainer(
                          color: Color(0xFFffdad6),
                          text: 'T',
                        ),
                        CircularContainer(
                          color: Color(0xFFb1c6ff),
                          text: 'W',
                        ),
                        CircularContainer(
                          color: Color(0xFFb1c6ff),
                          text: 'Th',
                        ),
                        CircularContainer(
                          color: Color(0xFFe1e2ec),
                          text: 'F',
                        ),
                        CircularContainer(
                          color: Color(0xFFe1e2ec),
                          text: 'Sa',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: height / 2.62,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      // color:Colors.green,
                      width: width / 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 4, top: 8),
                            child: Container(
                              width: width / 1.6,
                              height: height / 9,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xff004e89) //Color(0xFFeac5d8),
                                  ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Container(
                                      height: height / 10,
                                      width: width / 5,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'lib/Assets/book2.png'))),
                                    ),
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            'Subjects',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ])
                                ],
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 4, top: 8),
                              child: Container(
                                width: width / 1.6,
                                height: height / 4,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xFFbde0fe),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Text(
                                        'Fees',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xff2F4378)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Total :',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff2F4378)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            '2500',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Color(0xff2F4378)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: width / 8),
                                        Container(
                                          height: width / 3.1,
                                          width: width / 3.1,
                                          child: Center(
                                            child: CircularPercentIndicator(
                                              radius: width /
                                                  6.5, // size of the chart
                                              lineWidth: width /
                                                  18, // width of the progress bar
                                              animation:
                                                  true, // animate the chart
                                              percent:
                                                  0.80, // percentage value (0.62 for 62%)
                                              center: SizedBox(
                                                height: width / 4.5,
                                                width: width / 4.5,
                                                child: Card(
                                                  shape: CircleBorder(),
                                                  elevation: 30,
                                                  color: Colors.grey.shade50,
                                                  child: Center(
                                                    child: Text(
                                                      "80%", // text in the center of the chart
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20.0,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              circularStrokeCap:
                                                  CircularStrokeCap
                                                      .butt, // round the corners
                                              progressColor: Color(
                                                  0xFF78c0e0), // color of the progress bar
                                              backgroundColor: Colors.grey
                                                  .shade200, // color of the background
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 5),
                                          child: Container(
                                            height: height / 50,
                                            width: height / 50,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                        Text(
                                          'Pending',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 5),
                                          child: Container(
                                            height: height / 50,
                                            width: height / 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF78c0e0),
                                                border: Border.all(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                        Text(
                                          'Paid',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      // color:Colors.blue,
                      width: width / 2,
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, right: 8, top: 8),
                              child: Container(
                                width: width / 1.6,
                                height: height / 4,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[300]!),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xFFb1c6ff),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Text(
                                        'Attendance',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xff2F4378)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        '62%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26,
                                            color: Color(0xff2F4378)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: width / 8),
                                        Container(
                                          height: width / 3.1,
                                          width: width / 3.1,
                                          child: Center(
                                            child: CircularPercentIndicator(
                                              radius: width /
                                                  6.5, // size of the chart
                                              lineWidth: width /
                                                  18, // width of the progress bar
                                              animation:
                                                  true, // animate the chart
                                              percent:
                                                  0.62, // percentage value (0.62 for 62%)
                                              center: SizedBox(
                                                height: width / 4.5,
                                                width: width / 4.5,
                                                child: Card(
                                                  shape: CircleBorder(),
                                                  elevation: 30,
                                                  color: Colors.grey.shade50,
                                                  child: Center(
                                                    child: Text(
                                                      "62%", // text in the center of the chart
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20.0,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              circularStrokeCap: CircularStrokeCap
                                                  .round, // round the corners
                                              progressColor: Color(
                                                  0xFF8e94f2), // color of the progress bar
                                              backgroundColor: Colors.grey
                                                  .shade200, // color of the background
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, right: 8, top: 8),
                              child: Container(
                                width: width / 1.6,
                                height: height / 9,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color:Color(0xff054a91)// Color(0xFF023e7d),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 15),
                                      child: Container(
                                        height: height / 14,
                                        width: height / 14,
                                        //  color: Colors.white,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/Assets/TT1.png'))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        'TimeTable',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              if (isExpanded) ...[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 2),
                  child: Container(
                    height: height / 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 2),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Text(
                                  'More features',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 2.5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 2),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: InkWell(
                                  onTap: () {
                                    toggleExpansion();
                                  },
                                  child: Text(
                                    isExpanded ? 'Collapse' : 'View All',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Container(
                            height: height / 5,

                            // decoration: BoxDecoration(
                               //color: Colors.blue,
                            //  border: Border(top: BorderSide(color: Colors.grey[100]!), bottom: BorderSide(color: Colors.grey[100]!))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4.0, top: 4),
                                      child: Container(
                                        width: width / 5,
                                        // height: 30,
                                        decoration: (BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: height / 15,
                                              width: height / 15,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF001a41),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'lib/Assets/classdiary.png'))),
                                            ),
                                            Text(
                                              'ClassDiary',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 4),
                                      child: Container(
                                        width: width / 5,
                                        //  color: Color(0xFFb1c6ff),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: height / 15,
                                              width: height / 15,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF3a5ba9),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'lib/Assets/diary.png'))),
                                            ),
                                            Text(
                                              'Assignment',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 4),
                                      child: Container(
                                        width: width / 5,
                                        //  color: Color(0xFFb1c6ff),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: height / 15,
                                              width: height / 15,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFdae2ff),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'lib/Assets/requesttt.png'))),
                                            ),
                                            Text(
                                              'Leave',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 4),
                                        child: Container(
                                          width: width / 5,
                                          //  color: Color(0xFFb1c6ff),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: height / 15,
                                                width: height / 15,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'lib/Assets/meetingg.png'))),
                                              ),
                                              Text(
                                                'Meeting',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 4),
                                        child: Container(
                                          width: width / 5,
                                          //  color: Color(0xFFb1c6ff),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: height / 15,
                                                width: height / 15,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'lib/Assets/eventt.png'))),
                                              ),
                                              Text(
                                                'Events',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 4),
                                        child: Container(
                                          width: width / 5,
                                          //  color: Color(0xFFb1c6ff),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: height / 15,
                                                width: height / 15,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'lib/Assets/rcard.png'))),
                                              ),
                                              Text(
                                                'Report Card',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ] else ...[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 2),
                  child: Container(
                    height: height / 6.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 2),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Text(
                                  'More features',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 2.8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 2),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: InkWell(
                                  onTap: () {
                                    toggleExpansion();
                                  },
                                  child: Text(
                                    isExpanded ? 'Collapse' : 'View All',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Container(
                            height: height / 10,

                            // decoration: BoxDecoration(
                            // color: Colors.white,
                            //  border: Border(top: BorderSide(color: Colors.grey[100]!), bottom: BorderSide(color: Colors.grey[100]!))),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 4),
                                  child: Container(
                                    width: width / 5,
                                   // height: height/14,
                                    decoration: (BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height / 15,
                                          width: height / 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF001a41),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'lib/Assets/classdiary.png'))),
                                        ),
                                        Text(
                                          'ClassDiary',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 4),
                                  child: Container(
                                    width: width / 5,
                                    //  color: Color(0xFFb1c6ff),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height / 15,
                                          width: height / 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF3a5ba9),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'lib/Assets/diary.png'))),
                                        ),
                                        Text(
                                          'Assignment',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 4),
                                  child: Container(
                                    width: width / 5,
                                    //  color: Color(0xFFb1c6ff),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height / 15,
                                          width: height / 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFdae2ff),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'lib/Assets/requesttt.png'))),
                                        ),
                                        Text(
                                          'Leave',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 4),
                                  child: Container(
                                    width: width / 5,
                                    //  color: Color(0xFFb1c6ff),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height / 15,
                                          width: height / 15,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'lib/Assets/meetingg.png'))),
                                        ),
                                        Text(
                                          'Meeting',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 4),
                                  child: Container(
                                    width: width / 5,
                                    //  color: Color(0xFFb1c6ff),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height / 15,
                                          width: height / 15,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'lib/Assets/eventt.png'))),
                                        ),
                                        Text(
                                          'Events',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 4),
                                  child: Container(
                                    width: width / 5,
                                    //  color: Color(0xFFb1c6ff),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height / 15,
                                          width: height / 15,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'lib/Assets/rcard.png'))),
                                        ),
                                        Text(
                                          'Report Card',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ]),
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // unselectedLabelStyle: TextStyle(color: Colors.black),

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Exams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor:
            Colors.grey[1000], // Set default icon color to grey
        showUnselectedLabels: true,
        selectedItemColor:
            Color(0xFF2a4f9c), // Set pressed icon color to violet
        // unselectedLabelStyle: TextStyle(color: Colors.grey), // Set default label color to grey
        // selectedLabelStyle: TextStyle(color: Colors.purple),
        // Set selected label color to violet
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
