import 'package:flutter/material.dart';
import 'package:signin_signup_02/widgets/container4TextField.dart';

class InputTextField extends StatelessWidget {
  final ValueChanged<String>? onChangedAction;
  final IconData? icon;
  final String? hintText;
  final EdgeInsetsGeometry? containerMargin;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const InputTextField({
    Key? key,
    this.controller,
    this.icon = Icons.person,
    this.hintText,
    this.onChangedAction,
    this.containerMargin,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextContainer(
      margin: containerMargin,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChangedAction,
        cursorColor: Colors.lightBlue,
        decoration: InputDecoration(

          icon: Icon(icon,
            color: Colors.lightBlue,
          ),
          hintText: hintText,
          border: InputBorder.none,

        ),
      ),
    );
  }
}
