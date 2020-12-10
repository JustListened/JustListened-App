import 'package:flutter/material.dart';
import 'package:just_listened/constants/colors.constants.dart';

class AppSpacer extends StatelessWidget {
  AppSpacer({this.height = 1});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(height: height);
  }
}

class AppFormTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData iconData;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool autocorrect;
  final int maxLength;

  AppFormTextField({
    this.controller,
    this.labelText,
    this.iconData,
    this.keyboardType,
    this.autocorrect = true,
    this.maxLength,
    this.obscureText = false,
  });

  @override
  _AppFormTextFieldState createState() => _AppFormTextFieldState();
}

class _AppFormTextFieldState extends State<AppFormTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: kNeutralBlack,
      decoration: InputDecoration(
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: kMainPurple)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kMainPurple),
        ),
        focusColor: kMainPurple,
        labelText: widget.labelText,
        labelStyle: TextStyle(color: kMainPurple),
        icon: Icon(
          widget.iconData,
          color: kMainPurple,
        ),
      ),
      obscureText: widget.obscureText,
      autocorrect: widget.autocorrect,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType ?? TextInputType.text,
    );
  }
}
