
import 'package:flutter/material.dart';

class SignInorSignUpButton extends StatelessWidget {
  final void Function()? textButtonAction;
  final String? buttonText;
  const SignInorSignUpButton({Key? key, this.textButtonAction, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
        ),
        onPressed: textButtonAction,
        child: Text(buttonText!, style: TextStyle(color: Colors.lightBlue,decoration: TextDecoration.underline),)
    );
  }
}