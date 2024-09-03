// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cavz_media/custom/customtext.dart';
import 'package:cavz_media/screens/get_started.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    goToGetStarted();
    super.initState();
  }

  void goToGetStarted() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) {
      return GetStarted();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Vector.png"),
                CustomText(
                    text: "Company Logo",
                    size: 20,
                    weight: FontWeight.w500,
                    color: Colors.black)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
