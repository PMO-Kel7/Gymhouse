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
              color: Colors.red,
              route: goals(),
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'PushUp',
              color: Colors.blue,
              route: PushupPage(),
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Container 3',
              color: Colors.green,
              route: PlanksPage(),
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Container 4',
              color: Colors.yellow,
              route: PlanksPage(),
            ),
            SizedBox(
              height: 20,
            ),
            MenuContainer(
              title: 'Plank',
              color: Colors.black,
              route: PlanksPage(),
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

  const MenuContainer({
    required this.title,
    required this.color,
    required this.route, // Tambahkan parameter route
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
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class MenuContainer2 extends StatelessWidget {
  final String title;
  final Color color;

  const MenuContainer2({
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 160),
      child: Container(
        height: 100.0,
        width: 150.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
