import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Login/loginform.dart';
import 'package:gymhouse_project/size_config.dart';
import 'package:gymhouse_project/utils/constant.dart';
import 'package:simple_shadow/simple_shadow.dart';

class logincomponent extends StatefulWidget {
  @override
  _logincomponent createState() => _logincomponent();
}

class _logincomponent extends State<logincomponent> {

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
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome Back!!!", style: mTitleStyle,
                          )
                        ],
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SignInform()
                ]),
            ),
        ),
      )
    );
  }
}