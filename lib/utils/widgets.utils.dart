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
  final Function validator;

  AppFormTextField({
    this.controller,
    this.labelText,
    this.iconData,
    this.keyboardType,
    this.autocorrect = true,
    this.maxLength,
    this.obscureText = false,
    this.validator,
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
      validator: widget.validator,
    );
  }
}

class AppButton extends StatefulWidget {

  final String label;
  final Function onPressed;
  final bool enabled;

  AppButton({
    this.label,
    this.onPressed,
    this.enabled = true,
  });

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 280,
      child: RaisedButton(
        padding: EdgeInsets.all(12),
        onPressed: widget.enabled ? widget.onPressed ?? () {} : null,
        child: Text(widget.label,
            style: TextStyle(fontSize: 20, color: Colors.white)),
        color: widget.enabled ? kMainPurple : kLightGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

