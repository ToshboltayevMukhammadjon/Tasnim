import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  const AuthButton(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
