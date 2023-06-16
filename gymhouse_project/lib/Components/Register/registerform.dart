import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/custom_surfix_icon.dart';
import 'package:gymhouse_project/Components/default_button_custom_color.dart';
import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
import 'package:gymhouse_project/size_config.dart';
import 'package:gymhouse_project/utils/constant.dart';

class SignUpform extends StatefulWidget {
  @override
  _SignUpform createState() => _SignUpform();
}

class _SignUpform extends State<SignUpform> {
  // final _formKey = GlobalKey<FormState>();
  String? email_address;
  String? password;
  String? confirmpassword;

  TextEditingController txtEmailAddress = TextEditingController(),
      txtPassword = TextEditingController(),txtConfirmPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailaddress(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConfirmPassword(),
          SizedBox(height: getProportionateScreenHeight(20)),
          // Row(
          //   children: [
          //     Checkbox(
          //         value: remember,
          //         onChanged: (value) {
          //           setState(() {
          //             remember = value;
          //           });
          //         }),
          //     Text("Remember me"),
          //     Spacer(),
          //     GestureDetector(
          //       onTap: () {},
          //       child: Text(
          //         "Forgot password ?",
          //         style: TextStyle(decoration: TextDecoration.underline),
          //       ),
          //     )
          //   ],
          // ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "Register",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          //MENGAKTIFKAN FUNGSI KLIK PADA TEKS AGAR BISA KE LAYOUT SELANJUTNYA, GUNAKAN ON TAP
          GestureDetector(
            onTap: () {
              //INI UNTUK MEMANGGIL KE LAYOUT SELANJUTNYA
              Navigator.pushNamed(context, loginscreens.routeName);
            },
            child: Text(
              "Already have account? Login",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildEmailaddress() {
    return TextFormField(
      controller: txtEmailAddress,
      keyboardType: TextInputType.emailAddress,
      style: mTitleStyle2,
      decoration: InputDecoration(
        labelText: 'Email address',
        hintText: 'info@example.com',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(
        //   svgIcon: "assets/icons/Eye.svg",
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle2,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Eye.svg",
          )),
    );
  }

  TextFormField buildConfirmPassword() {
    return TextFormField(
      controller: txtConfirmPassword,
      obscureText: true,
      style: mTitleStyle2,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan kembali password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Eye.svg",
          )),
    );
  }
}
