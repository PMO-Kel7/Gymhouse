import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/file_navigation.dart';
import 'package:gymhouse_project/Components/custom_surfix_icon.dart';
import 'package:gymhouse_project/Components/default_button_custom_color.dart';
import 'package:gymhouse_project/Screens/Register/registerscreens.dart';
import 'package:gymhouse_project/size_config.dart';
import 'package:gymhouse_project/utils/constant.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInformState createState() => _SignInformState();
}

class _SignInformState extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  void _loginUser() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    )
        .then((value) {
      print("Login Successful");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BtnNavBar()),
      );
    }).catchError((error) {
      print("Error: ${error.toString()}");
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Login Failed"),
            content: Text("Invalid email or password. Please try again."),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: mTitleStyle,
            decoration: InputDecoration(
              labelText: 'Email address',
              hintText: 'info@example.com',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(
                svgIcon: "assets/icons/Eye.svg",
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              if (!value.contains('@')) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            style: mTitleStyle,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(
                svgIcon: "assets/icons/Lock.svg",
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "Login",
            press: () {
              if (_formKey.currentState!.validate()) {
                _loginUser();
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, registerscreens.routeName);
            },
            child: Text(
              "Don't have an account? Register",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
