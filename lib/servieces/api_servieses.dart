import 'dart:io';

// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:signin_signup_02/servieces/auth.dart';


class responseTokenPrint extends StatefulWidget {
  const responseTokenPrint({Key? key}) : super(key: key);

  @override
  _responseTokenPrintState createState() => _responseTokenPrintState();
}

// ignore: camel_case_types
class _responseTokenPrintState extends State<responseTokenPrint> {

  Dio dio = new Dio();

  Future<LoginResponseModel> fetchPost() async {
    print('feg');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? responseToken = prefs.getString('responseToken');

    final response = await dio.post('http://103.1.114.27/User/Login', data: {'Username': 'admin', 'password': 'admin'}, options: Options(headers: { HttpHeaders.authorizationHeader: responseToken = responseToken,
      HttpHeaders.contentTypeHeader: "application/json"}, ));




    var   responseJson = json.decode(response.data);
    print("Result: ${response.data}");
    return LoginResponseModel.fromJson(responseJson);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("")
          ],
        ),
      ),
    );
  }
}


