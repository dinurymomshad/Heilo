import 'package:flutter/material.dart';
import 'package:heilo_test_ui/views/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.65,
      child: RaisedButton(
        color: AppColor.loginButtonColor,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () => print("Pressed"),
        child: Text(
          "LOG IN",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}