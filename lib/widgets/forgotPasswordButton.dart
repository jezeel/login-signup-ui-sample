import 'package:flutter/material.dart';
import 'package:signin_signup_02/screens/forgotPassword/forgotPassword.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
      ),
      onPressed: (){
        print("Forgot Password Pressed");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ResetPassword();
            },
          ),
        );
      },
      child: Text("Forgot Password..?", style: TextStyle(color: Colors.lightBlue),)
    );
  }
}



