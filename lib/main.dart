import 'dart:math';

import 'package:flutter/material.dart';
import 'package:seether/Fb_form.dart';
import 'package:seether/Feadback.dart';
import 'package:seether/SplashScreen.dart';
import 'package:seether/TC.dart';
import 'package:seether/detail.dart';
import 'package:seether/detail_loc.dart';
import 'package:seether/location.dart';
import 'package:seether/login.dart';
import 'package:seether/noLoc.dart';
import 'package:seether/utama.dart';
import 'package:seether/pilLoc.dart';
import 'package:seether/version.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: detail_loc(),
    );
  }
}
