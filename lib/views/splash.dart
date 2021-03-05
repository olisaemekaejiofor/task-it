
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_it/helpers/images.dart';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => OnBoardingPage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(blogo),
      ),
    );
  }
}