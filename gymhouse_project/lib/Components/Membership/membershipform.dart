import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Membership_plus/MembershipPlusForm.dart';
import 'package:gymhouse_project/Screens/Trainer/trainerscreens.dart';
import 'package:gymhouse_project/utils/constant.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:gymhouse_project/Screens/Equipment/equipmentscreens.dart';

class membership extends StatelessWidget {
  const membership({Key? key});

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
            "Membership Prime",
            style: mTitleStyleNameAppbar,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
              ),
              SizedBox(
                height: 45,
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
                color: Color(0xFF398AB9),
                imagePath: 'assets/images/OBJECTSjadwal.png',
                onTap: () {
                  const url =
                      'https://api.whatsapp.com/send?phone=6281390073684&text=halo%2C%20saya%20ingin%20membuat%20jadwal%20untuk%20latihan%20di%20gymhouse';
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => WebviewScaffold(
                          url: url,
                          appBar: AppBar(
                            title: Text("WebView"),
                          ))));
                },
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Trainers',
                color: Color(0xFF398AB9),
                imagePath: 'assets/images/Speech Bubbles (2)trainer.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TrainerListApp(), // Navigate to MembershipPlusForm widget
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Equipment',
                color: Color(0xFF398AB9),
                imagePath: 'assets/images/DESIGNED BY FREEPIKequipment.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          equipment(), // Navigate to equipment widget
                    ),
                  );
                },
              ),
            ],
          ),
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
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Center(
                child: Image.asset(
                  imagePath, // Use the imagePath parameter
                  fit: BoxFit.cover,
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
        ));
  }
}
