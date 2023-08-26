// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quite_addiction/screen/Drawer.dart';

// import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

// constructor bna rakha hai humne
class MyObject {
  final String text;
  final String image;

  MyObject({required this.text, required this.image});
}

class _HomePageState extends State<HomePage> {
  // array list
  List<MyObject> myObjects = [
    MyObject(text: "Clown", image: 'assets/images/clown.jpg'),
    MyObject(text: "Noob", image: 'assets/images/noob.png'),
    MyObject(text: "Novice", image: 'assets/images/novice.png'),
    MyObject(text: "Average", image: 'assets/images/average.jpg'),
    MyObject(text: "Sigma", image: 'assets/images/sigma.jpg'),
    MyObject(text: "Chad", image: 'assets/images/chad.jpg'),
    MyObject(text: "Giga Chad", image: 'assets/images/gigachad.jpg'),
    MyObject(text: "Absolute Chad", image: 'assets/images/abschad.png'),
  ];

// yeh ek variable le liya jisme humne minut second ki value define kr rakhi hai
  String secondsStrings = "00";
  String minutsStrings = "00";
  String hoursStrings = "00";

  //yeh hour or minut second ki humne value 0 leli
  int seconds = 0;
  int minutes = 0;
  int hours = 0;
  int days = 0;

  late Timer timer;
  bool isRunning = false;

  // init funvtion
  @override
  void initState() {
    super.initState();
    isRunning = false;
    // timer ko false kr dya humne dfault
  }

// ek function bnaya hai jisme time ko difine kra hai or is fnction ko hum initstate se run krenge
  void timerStart() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        // Increment seconds and handle rollover to minutes
        seconds++;
        if (seconds >= 60) {
          seconds = 0;
          minutes++;

          // Handle rollover to hours
          if (minutes >= 60) {
            minutes = 0;
            hours++;

            if (hours >= 60) {
              hours = 0;
              days++;
            }
          }
        }
      });
    });
  }

  void stopTimer() async {
    timer.cancel();
    isRunning = false;

    setState(() {
      if (isRunning) {
        timerStart();
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    // yeh cheez time ko 2 digit m  show krega or 0 ka kaam har word m 0 a= krke show krega
    String secondsString = seconds.toString().padLeft(2, "0");
    String minutesString = minutes.toString().padLeft(2, "0");
    String hoursString = hours.toString().padLeft(2, "0");
// humne ek variable le liya jimse array ki value ko define krenge
    int objectIndex = 0;

    if (days >= 03) {
      objectIndex = 0;
    }
    if (days >= 07) {
      objectIndex = 1;
    }
    if (days >= 15) {
      objectIndex = 2;
    }
    if (days >= 30) {
      objectIndex = 3;
    }
    if (days >= 60) {
      objectIndex = 4;
    }
    if (days >= 90) {
      objectIndex = 5;
    }
    if (days >= 120) {
      objectIndex = 6;
    }
    if (days >= 180) {
      objectIndex = 7;
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: Text(
          'Quit Addiction',
          style: TextStyle(
              fontSize: 22,
              fontFamily: GoogleFonts.shadowsIntoLight().fontFamily,
              wordSpacing: 1),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(right: 30, bottom: 12),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 30),
                  child: Container(
                      height: 150,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90, left: 0),
                        child: Column(
                          children: [
                            Text(
                              myObjects[objectIndex].text,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 21),
                            ),
                            Text(
                              'Current Badge',
                              style: TextStyle(fontSize: 20, letterSpacing: 1),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 110),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    // foregroundColor: Colors.red,
                    radius: 77,
                    backgroundImage: AssetImage(myObjects[objectIndex].image),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 230,
                    width: 230,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Center(
                        child: Text(
                          '$hoursString:$minutesString:$secondsString',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 37,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 101, top: 50),
                  child: Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: Text('Day - $days',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            // letterSpacing: 1,
                            // decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                ),
              ],
            ),

            // Center(
            //   child:
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Text(
                        '"Strength does not come frome physical capacity.It comes from an indomitable will." ',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 18,
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            if (!isRunning) {
                              timerStart();
                              setState(() {
                                isRunning = true;
                              });
                            }
                          },
                          icon: Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.green,
                            size: 65,
                          )),
                      SizedBox(
                        width: 90,
                      ),
                      IconButton(
                          onPressed: () {
                            // humne iss nutton k function m humne ek show diallog box le liya
                            showDialog(
                              context: context,
                              // yeh builder function box ko build krne m help krega
                              builder: (context) {
                                return AlertDialog(
                                    title: Text('Confirm Reset'),
                                    content: Text('Are you sure ??'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(
                                                context); //// iska ka use hai jo hmne alertbox lagaya hai usko close krne m kaam ayega
                                          },
                                          child: Text('Cancel')),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(
                                                context); // iska ka use hai jo hmne alertbox lagaya hai usko close krne m kaam ayega
                                            if (isRunning) {
                                              stopTimer();
                                              setState(() {
                                                seconds = 0;
                                                minutes = 0;
                                                hours = 0;
                                                days = 0;
                                              });
                                            }
                                          },
                                          child: Text('Reset'))
                                    ]);
                              },
                            );
                          },
                          icon: Icon(
                            Icons.restore_sharp,
                            color: Colors.red,
                            size: 62,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: Mydrawer(),
    );
  }
}
