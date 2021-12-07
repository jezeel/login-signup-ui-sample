import 'package:flutter/material.dart';
import 'package:signin_signup_02/screens/signin/siginIn.dart';
import 'package:signin_signup_02/screens/signup/siginUp.dart';
import 'package:signin_signup_02/widgets/centerButton.dart';


class HomeBody extends StatelessWidget {

  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/17545.jpg"),
          fit: BoxFit.cover,

        ),
      ),
      child: ListView(
        children: [
          SizedBox(height: size.height*0.25,),
          Image(image: AssetImage("assets/images/am_logo_low.png"),height: size.height*0.3),
          Button(
            buttonColor: Colors.lightBlue,
            buttonText: "Sign In",
            textColor: Colors.white,
            press: () {
              print("Go to Sign_In Page....");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignIn();
                  },
                ),
              );
            },
            margin: EdgeInsets.only(top: size.height * 0.02),
            buttonwidth: size.width*0.64,
            buttonHeight: size.height*0.055,
          ),
          Button(
            buttonColor: Colors.white,
            textColor: Colors.lightBlue,
            buttonText: "Sign Up",
            press: () {
              print("Go to Sign_Up Page....");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SiginUp();
                  },
                ),
              );
            },
            margin: EdgeInsets.only(top: size.height * 0.03),
            buttonwidth: size.width*0.64,
            buttonHeight: size.height*0.055,
          ),
        ],
      ),
    );
  }
}



