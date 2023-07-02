import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/utils/constant.dart';

class membership extends StatelessWidget {
  const membership({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Start Your\n Exlusive\n Training hear", style: mTitleStyleMembership),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
            MenuContainer(
              
              title: 'Container 1',
              color: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Container 2',
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Container 3',
              color: Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Container 4',
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuContainer extends StatelessWidget {
  final String title;
  final Color color;

  const MenuContainer({
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: 
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
