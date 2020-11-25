import 'package:flutter/material.dart';
import 'package:heilo_test_ui/views/screens/auth/sign_up_screen.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const GradientButton({Key key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xFF7EDD27), Color(0xFF26D892)])),
        child: Center(
            child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        )),
      ),
    );
  }
}
