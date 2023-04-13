import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seether/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds:3),
        ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: Center(child: Image.asset('assets/logo.png'),),
    );
  }
}
