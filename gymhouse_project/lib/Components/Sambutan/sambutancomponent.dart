// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:gymhouse_project/Components/Login/loginform.dart';
// import 'package:gymhouse_project/size_config.dart';
// import 'package:gymhouse_project/utils/constant.dart';
// import 'package:simple_shadow/simple_shadow.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Screens/Welcome/welcomescreen.dart';

class onboardingscreen extends StatefulWidget {
  const onboardingscreen({Key? key}) : super(key: key);

  @override
  State<onboardingscreen> createState() => _onboardingscreenState();
}

class _onboardingscreenState extends State<onboardingscreen> {
  
  // late PageController _pageController;

  // @override
  // void initState(){
  //   _pageController = PageController(initialPage: 0);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050522),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => onboardcontent(
                    image: "assets/images/Gym-rafiki 1.png",
                    title: "Achieve your \nbest performance \nhere !" ,
                    description:
                        "Attain the perfect balance between strength and flexibility with \nGymhouse."
                  ),
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, welcomescreens.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0A0A42),
                        shape: const CircleBorder()
                        ),
                      child: SvgPicture.asset(
                        "assets/icons/Arrrow.svg",
                        color: Colors.white,
                        ),
                      ),
                  ),
                  // GestureDetector(
                  //   onTap: (){
                  //     Navigator.pushNamed(context, welcomescreens.routeName);
                  //   },
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class onboardcontent extends StatelessWidget {
  const onboardcontent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Spacer(),
      Image.asset(
        image,
        height: 400,
      ),
      // const Spacer(),
      Text(
        title,
        textAlign: TextAlign.left,
        style: Theme.of(context)
            .textTheme
            
            .headlineLarge!
            .copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white),
      ),
      const SizedBox(
        height: 16,
      ),
      Text(
        description,
        textAlign: TextAlign.left,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white),
      ),
      const Spacer(),
    ]);
  }
}

