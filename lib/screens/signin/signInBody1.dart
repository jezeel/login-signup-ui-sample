import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:signin_signup_02/servieces/auth.dart';
import 'package:signin_signup_02/widgets/centerButton.dart';
import 'package:signin_signup_02/widgets/inputField.dart';
import 'package:signin_signup_02/widgets/passwordField.dart';
import 'package:signin_signup_02/widgets/forgotPasswordButton.dart';
import 'package:signin_signup_02/widgets/signInorSignUpButton.dart';
import 'package:signin_signup_02/screens/signup/siginUp.dart';
import 'package:signin_signup_02/screens/chatHome/chatHome.dart';
import 'package:http/http.dart' as http;



class SignInBody1 extends StatefulWidget {
  const SignInBody1({Key? key}) : super(key: key);

  @override
  _SignInBody1State createState() => _SignInBody1State();
}

class _SignInBody1State extends State<SignInBody1> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/17545.jpg"),
          fit: BoxFit.cover,

        ),
      ),
      child: ListView(
        children: [
          SizedBox(height: size.height*0.07,),
          Image(image: AssetImage("assets/images/am_logo_low.png"),height: size.height*0.1,),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: size.height* 0.1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white70,
              ),
              width: size.width *0.9,
              height: size.height*0.54,
              child: ListView(
                children: [
                  Text(
                    "  Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.lightBlue,

                    ),
                  ),
                  InputTextField(
                    hintText: "Username or Email",
                    onChangedAction: (value){},
                    containerMargin: EdgeInsets.only(top: size.height* 0.05),
                  ),
                  PasswordField(
                    containerMargin: EdgeInsets.only(top: size.height* 0.03),
                    onChangedAction: (value){},
                  ),
                  Container(
                    margin: EdgeInsets.only(right: size.width *0.51),
                    child: ForgotPassword(),
                  ),
                  Button(
                    buttonColor: Colors.lightBlue,
                    buttonText: "Sign In",
                    textColor: Colors.white,
                    press: (){
                      print("Sign In Completed");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ChatHome();
                          },
                        ),
                      );
                    },
                    margin: EdgeInsets.only(top: size.width * 0.05),
                    buttonwidth: size.width*0.5,
                    buttonHeight: size.height*0.055,
                  ),
                  SizedBox(height: size.height*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have an Account..?", style: TextStyle(color: Colors.grey),),
                      SignInorSignUpButton(
                        textButtonAction: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SiginUp();
                            },
                          ),
                        );},
                        buttonText: "Sign Up",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
