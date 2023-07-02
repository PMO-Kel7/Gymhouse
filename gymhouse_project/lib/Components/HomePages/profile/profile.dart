import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
import 'package:gymhouse_project/utils/constant.dart';

class profile extends StatelessWidget {
  const profile({Key? key});

  void _signOut(BuildContext context) {
    FirebaseAuth.instance.signOut().then((value) {
      print("Signed Out");
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => loginscreens()),
          (Route<dynamic> route) => false);
      print("Ini logout ");
    }).catchError((error) {
      print("Error ${error.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050522),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("My Profile", style: mTitleStyleMyprofile),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: SvgPicture.asset(
                              "assets/images/Gym-amico 1.svg",
                              height: 200,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Firman Fathoni",
                          style: mTitleStyleMyprofilepage1,
                        ),
                        Text(
                          "yukhapoi115@gmail.com",
                          style: mTitleStyleMyprofilepage3,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF050522),
                            ),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Divider(),
                        const SizedBox(height: 150,),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF050522),
                            ),
                            child: Text(
                              'News',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {_signOut(context);},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF050522),
                            ),
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                        // Konten halaman profil di sini
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
