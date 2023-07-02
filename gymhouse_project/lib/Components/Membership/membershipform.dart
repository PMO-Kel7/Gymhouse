import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/MembershipPlus/MembershipPlusFrom.dart';
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
                  height: 50,
                ),
                Text("Membership Prime",style: mTitleStyleMembership,),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
            MenuContainer(
              title: 'Course',
              color: Color(0xFF398AB9),
              imagePath: 'assets/images/OBJECTSorang_tapa.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MembershipPlusForm(), // Navigate to MembershipPlusForm widget
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Schedule',
              color: Colors.blue,
              imagePath: 'assets/images/OBJECTSjadwal.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MembershipPlusForm(), // Navigate to MembershipPlusForm widget
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Trainers',
              color: Colors.green,
              imagePath: 'assets/images/Speech Bubbles (2)trainer.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MembershipPlusForm(), // Navigate to MembershipPlusForm widget
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Equipment',
              color: Colors.yellow,
              imagePath: 'assets/images/DESIGNED BY FREEPIKequipment.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MembershipPlusForm(), // Navigate to MembershipPlusForm widget
                  ),
                );
              },
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
  final VoidCallback onTap; // Add onTap callback
  final String imagePath; // Add imagePath parameter for the image

  const MenuContainer({
    required this.title,
    required this.color,
    required this.onTap,
    required this.imagePath, // Add imagePath parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Center(
            child: GestureDetector(
              onTap: onTap, // Use the onTap callback
              child: Expanded(
                child: Image.asset(
                  imagePath, // Use the imagePath parameter
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
