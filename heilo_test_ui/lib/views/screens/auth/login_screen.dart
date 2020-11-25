import 'package:flutter/material.dart';
import 'package:heilo_test_ui/views/styles.dart';
import 'package:heilo_test_ui/views/widgets/login_button.dart';
import 'package:heilo_test_ui/views/widgets/gradient_button.dart';
import 'package:heilo_test_ui/views/widgets/text_field.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        iconTheme: IconThemeData(color: AppColor.dividerColor),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 50),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome back!",
                      style: TextStyle(fontSize: 22, color: AppColor.fontColor),
                     )),
                SizedBox(height: 50),
                CustomTextField(hints: "Phone"),
                SizedBox(height: 20),
                CustomTextField(hints: "Password"),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginButton(),
                  ],
                ),
                SizedBox(height: 50),
                Center(child: Text("If you don't have an account")),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientButton(
                      title: "SIGN UP",
                      onPressed: () =>  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
