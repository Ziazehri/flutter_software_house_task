import 'dart:async';

import 'package:app/screens/authentication_screens/login_scr.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScr(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      
      body: GradientBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                               Image.asset(
  "assets/images/logo.png",
  height: 150,
  width: 150,
  fit: BoxFit.cover,
),

              
             
          
            ],
          ),
        ),
      ),


    );
  }
}