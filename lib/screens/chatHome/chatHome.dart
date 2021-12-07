import 'package:flutter/material.dart';
import 'package:signin_signup_02/screens/chatHome/chatHomeBody.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({Key? key}) : super(key: key);

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
      body: ChatHomeBody(),
    );
  }
}
