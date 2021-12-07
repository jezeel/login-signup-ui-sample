
import 'package:flutter/material.dart';
import 'package:signin_signup_02/screens/homeScreen/homeScreen.dart';


void main(){
  runApp(App());
}



class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if(_error) {
      print("");
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      print("");
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}