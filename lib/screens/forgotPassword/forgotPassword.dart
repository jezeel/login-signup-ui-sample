import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup_02/widgets/centerButton.dart';
import 'package:signin_signup_02/widgets/inputField.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(
              context,
            );
          },
          icon: Icon(Icons.arrow_back), color: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
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
            SizedBox(height: size.height*0.07),
            Image(image: AssetImage("assets/images/am_logo_low.png"),height: size.height*0.1,),
            SizedBox(height: size.height*0.05),
            Container(
              padding: EdgeInsets.only(left: size.width*0.02, right: size.width*0.02, top: size.height*0.03),
              margin: EdgeInsets.only(left: size.width *0.05, right: size.width *0.05),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white70,
              ),
              height: size.height*0.55,
              child: ListView(
                children: [
                  Text("Forgot\nPassword?", style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 43,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: size.height*0.03),
                  Text("Enter the email address associated with your account and we we'll send an email with instruction to reset your password.",
                  style: TextStyle(
                    color: Colors.blueGrey.shade900,
                    fontSize: 15,
                  ),),
                  SizedBox(height: size.height*0.035),
                  InputTextField(
                    icon: Icons.email,
                    hintText: "Email",
                    onChangedAction: (value){},
                    keyboardType: TextInputType.emailAddress,
                    containerMargin: EdgeInsets.only(top: size.height* 0.02),
                  ),
                  Button(
                    buttonColor: Colors.lightBlue,
                    buttonText: "Send Email",
                    textColor: Colors.white,
                    press: (){
                      print("Verify Email to rest password");
                    },
                    margin: EdgeInsets.only(top: size.height*0.05),
                    buttonwidth: size.width*0.5,
                    buttonHeight: size.height*0.055,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
