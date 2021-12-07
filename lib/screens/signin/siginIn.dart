import 'package:flutter/material.dart';
import 'package:signin_signup_02/screens/signin/signInBody1.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(
              context,
            );
          },
          icon: Icon(Icons.arrow_back), color: Colors.lightBlue,
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: SignInBody1(),
    );
  }
}
