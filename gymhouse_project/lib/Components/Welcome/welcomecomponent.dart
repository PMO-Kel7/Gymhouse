import 'package:flutter/material.dart';
import 'package:gymhouse_project/size_config.dart';
import 'package:gymhouse_project/utils/constant.dart';
import 'package:simple_shadow/simple_shadow.dart';

class welcomecomponent extends StatefulWidget {
  @override
  _welcomecomponent createState() => _welcomecomponent();
}

class _welcomecomponent extends State<welcomecomponent> {

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.04,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.04,
                  ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Gymhouse", style: mTitleStyle,
                          )
                        ],
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  SimpleShadow(
                      child: Image.asset(
                      "assets/images/Gym_login.png",
                      height: 150, 
                      width: 202 ,
                      ),
                      opacity: 0.5,
                      color: kSecondaryColor,
                      offset: Offset(5, 5),
                      sigma: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // SignInform()
                ]),
            ),
        ),
      )
    );
  }
}