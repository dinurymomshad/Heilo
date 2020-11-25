import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hints;

  const CustomTextField({Key key, this.hints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(hintText: hints, border: InputBorder.none),
      ),
    );
  }
}
