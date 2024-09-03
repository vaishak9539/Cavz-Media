// ignore_for_file: prefer_const_constructors

import 'package:cavz_media/custom/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/login.jpeg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black,
            BlendMode.saturation,
          ),
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 360.h),
              Image.asset("assets/images/Vector.png"),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: CustomText(
                    text: "Company Logo",
                    size: 20,
                    weight: FontWeight.w500,
                    color: Colors.white),
              ),
              SizedBox(height: 25.h),
              Container(
                height: 40.h,
                width: 320.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffEBCF71)),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: CustomText(
                        text: "Continue with Phone Number",
                        size: 16,
                        weight: FontWeight.w600,
                        color: Colors.white)),
              ),
              SizedBox(height: 23.h),
              Container(
                height: 40.h,
                width: 320.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffEBCF71)),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: CustomText(
                        text: "Login with Google",
                        size: 16,
                        weight: FontWeight.w600,
                        color: Colors.white)),
              ),
              SizedBox(height: 23.h),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "CreatAccount");
                },
                child: Container(
                  height: 40.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Color(0xffEBCF71)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: CustomText(
                          text: "Create an Account",
                          size: 16,
                          weight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: CustomText(
                  text: "Terms & Conditions , Privacy Policy",
                  size: 16,
                  weight: FontWeight.w400,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
