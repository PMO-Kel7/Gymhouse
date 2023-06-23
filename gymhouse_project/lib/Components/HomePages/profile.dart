import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
import 'package:gymhouse_project/utils/constant.dart';

class profile extends StatelessWidget {
  const profile({Key? key});

  void _signOut(BuildContext context) {
    FirebaseAuth.instance
        .signOut()
        .then((value) {
      print("Signed Out");
      Navigator.pushNamed(context, loginscreens.routeName);
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Konten halaman profil di sini
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      _signOut(context);
                    },
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
