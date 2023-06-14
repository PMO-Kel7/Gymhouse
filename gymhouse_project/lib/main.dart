import 'package:flutter/material.dart';
import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
// import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
// import 'package:gymhouse_project/Screens/Sambutan/sambutanscreens.dart';
// import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
// import 'package:gymhouse_project/Screens/Welcome/welcomescreen.dart';
import 'package:gymhouse_project/routes.dart';
import 'package:gymhouse_project/theme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      title: "Gymhouse",
      theme: theme(),
      initialRoute: loginscreens.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
    )
  );
}
