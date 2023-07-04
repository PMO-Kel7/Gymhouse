import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/goals.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/planks.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pushup.dart';
import 'package:gymhouse_project/utils/constant.dart';

class mainworkout extends StatelessWidget {
  const mainworkout({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFF050522),
        elevation: 0,
        toolbarHeight: 100.0,
        title: Center(
          child: Text(
            "Workout Routine",
            style: mTitleStyleNameAppbar,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            MenuContainer(
              title: 'Goals',
              color: Color.fromARGB(255, 70, 149, 151),
              route: goals(),
              imagePath: 'assets/images/gym1.png',
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'PushUp',
              color: Color.fromARGB(255, 70, 149, 151),
              route: PushupPage(),
              imagePath: 'assets/images/gym3.png',
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Pemanasan',
              color: Color.fromARGB(255, 70, 149, 151),
              route: PlanksPage(),
              imagePath: 'assets/images/gym2.png',
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Peregangan',
              color: Color.fromARGB(255, 70, 149, 151),
              route: PlanksPage(),
              imagePath: 'assets/images/gym4.png',
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Plank',
              color: Color.fromARGB(255, 70, 149, 151),
              route: PlanksPage(),
              imagePath: 'assets/images/gym5.png',
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
  final Widget route; // Tambahkan parameter route
  final String imagePath;

  const MenuContainer({
    required this.title,
    required this.color,
    required this.route, // Tambahkan parameter route
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigasi ke halaman yang ditentukan saat kontainer ditekan
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        child: Container(
          height: 110.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 110.0,
                height: 90.0,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Menentukan teks berada di tengah
              ),
            ],
          ),
        ));
  }
}
