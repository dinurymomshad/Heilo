import 'package:flutter/material.dart';
import 'package:heilo_test_ui/views/styles.dart';
import 'package:heilo_test_ui/views/widgets/gradient_button.dart';
import 'package:heilo_test_ui/views/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        iconTheme: IconThemeData(color: AppColor.dividerColor),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Welcome",
                          style: TextStyle(fontSize: 18, color: AppColor.fontColor),
                        )),
                    SizedBox(height: 5),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.signUpScreenContainerColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(39)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        CustomTextField(hints: "Name"),
                        SizedBox(height: 20),
                        CustomTextField(hints: "E-mail"),
                        SizedBox(height: 20),
                        CustomTextField(hints: "Mobile Number"),
                        SizedBox(height: 20),
                        CustomTextField(hints: "Enter Password"),
                        SizedBox(height: 20),
                        CustomTextField(hints: "Confirm Password"),
                        SizedBox(height: 20),
                        GradientButton(
                          title: "NEXT",
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
