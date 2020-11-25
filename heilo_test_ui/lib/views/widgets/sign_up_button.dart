import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("h"),
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient:
            LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xFF7EDD27), Color(0xFF26D892)])),
        child: Center(
            child: Text(
              "SIGN UP",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
      ),
    );
  }
}