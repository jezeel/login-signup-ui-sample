import 'package:flutter/material.dart';
import 'package:signin_signup_02/screens/signup/signupBody.dart';



class SiginUp extends StatelessWidget {
  const SiginUp({Key? key}) : super(key: key);

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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SignUpBody(),
    );
  }
}
