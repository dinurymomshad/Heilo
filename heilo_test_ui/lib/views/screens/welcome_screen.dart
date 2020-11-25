import 'package:flutter/material.dart';
import 'package:heilo_test_ui/views/screens/auth/login_screen.dart';
import 'package:heilo_test_ui/views/styles.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 1),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/app_logo.png",
                height: 100,
                width: 73,
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/book.png",
                        height: 100,
                        width: 73,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Study",
                        style: TextStyle(fontSize: 30, color: AppColor.fontColor),
                      ),
                    ],
                  ),
                  Transform.rotate(
                      angle: (25 / (180 / 3.1416)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Container(height: 100, width: 3, color: AppColor.dividerColor),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/teacher.png",
                        height: 100,
                        width: 73,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Teach",
                        style: TextStyle(fontSize: 30, color: AppColor.fontColor),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
