
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup_02/widgets/centerButton.dart';
import 'package:signin_signup_02/widgets/inputField.dart';
import 'package:signin_signup_02/widgets/passwordField.dart';
import 'package:signin_signup_02/widgets/signInorSignUpButton.dart';
import 'package:signin_signup_02/screens/signin/siginIn.dart';
import 'package:signin_signup_02/screens/chatHome/chatHome.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController phoneTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();
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
          SizedBox(height: size.height*0.02),
          Image(image: AssetImage("assets/images/am_logo_low.png"),height: size.height*0.1),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: size.height* 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white70,
              ),
              width: size.width *0.9,
              height: size.height*0.73,
              child: ListView(
                children: [
                  Text(
                    "  Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.lightBlue,

                    ),
                  ),
                  InputTextField(
                    controller: userNameTextEditingController,
                    hintText: "Username",
                    onChangedAction: (value){},
                    containerMargin: EdgeInsets.only(top: size.height* 0.05),
                  ),
                  InputTextField(
                    controller: emailTextEditingController,
                    icon: Icons.email,
                    hintText: "Email",
                    onChangedAction: (value){},
                    keyboardType: TextInputType.emailAddress,
                    containerMargin: EdgeInsets.only(top: size.height* 0.02),
                  ),
                  InputTextField(
                    controller: phoneTextEditingController,
                    icon: Icons.phone,
                    hintText: "Phone",
                    onChangedAction: (value){},
                    containerMargin: EdgeInsets.only(top: size.height* 0.02),
                    keyboardType: TextInputType.number,
                  ),
                  PasswordField(
                    containerMargin: EdgeInsets.only(top: size.height* 0.02),
                    onChangedAction: (value){},
                  ),
                  PasswordField(
                    controller: passwordTextEditingController,
                    containerMargin: EdgeInsets.only(top: size.height* 0.02),
                    onChangedAction: (value){},
                    hintText: "Confirm Password",
                  ),
                  Button(
                    buttonColor: Colors.lightBlue,
                    buttonText: "Create Account",
                    textColor: Colors.white,
                    press: (){
                      print("Account Created");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ChatHome();
                          },
                        ),
                      );
                    },
                    margin: EdgeInsets.only(top: size.height*0.05),
                    buttonwidth: size.width*0.5,
                    buttonHeight: size.height*0.055,
                  ),
                  SizedBox(height: size.height*0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have an Account..?", style: TextStyle(color: Colors.grey)),
                      SignInorSignUpButton(
                        textButtonAction: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignIn();
                              },
                            ),
                          );
                        },
                        buttonText: "Sign In",
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



