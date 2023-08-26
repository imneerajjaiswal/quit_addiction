// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:quite_addiction/widget/style.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade600,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Drawer(
        backgroundColor: Colors.black26,
        width: 280,
        child: Container(
          // margin: EdgeInsets.all(3),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, bottom: 12),
                  child: Text(
                    'All Badges',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/clown.jpg'))),
                  ),
                  title: Text(
                    'Clown',
                    style: myStyle(),
                  ),
                  subtitle: Text('03+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/noob.png'))),
                  ),
                  title: Text(
                    'Noob',
                    style: myStyle(),
                  ),
                  subtitle: Text('07+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/novice.png'))),
                  ),
                  title: Text(
                    'Novice',
                    style: myStyle(),
                  ),
                  subtitle: Text('15+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/average.jpg'))),
                  ),
                  title: Text(
                    'Average',
                    style: myStyle(),
                  ),
                  subtitle: Text('30+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/sigma.jpg'))),
                  ),
                  title: Text(
                    'Sigma',
                    style: myStyle(),
                  ),
                  subtitle: Text('60+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chad.jpg'))),
                  ),
                  title: Text(
                    'Chad',
                    style: myStyle(),
                  ),
                  subtitle: Text('90+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/gigachad.jpg'))),
                  ),
                  title: Text(
                    'Giga Chad',
                    style: myStyle(),
                  ),
                  subtitle: Text('120+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/abschad.png'))),
                  ),
                  title: Text(
                    'Absolute Chad',
                    style: myStyle(),
                  ),
                  subtitle: Text('180+Days',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade300)),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Container(
                  child: Center(
                      child: Text(
                    'My Badges',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )),
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15)),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
