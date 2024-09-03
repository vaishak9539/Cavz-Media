// ignore_for_file: prefer_const_constructors

import 'package:cavz_media/custom/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool securtext = true;
  bool securtext1 = true;

  bool checkTerms = false;
  bool checkMarketing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 150.h),
              CustomText(
                  text: "Create Account",
                  size: 20,
                  weight: FontWeight.w500,
                  color: Colors.black),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your email",
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: Color(0xffE7E7E6),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            securtext = !securtext;
                          });
                        },
                        icon: securtext
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                      hintText: "Password",
                      contentPadding: EdgeInsets.only(left: 18, right: 18),
                      filled: true,
                      fillColor: Color(0xffE7E7E6),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                  obscureText: securtext,
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            securtext1 = !securtext1;
                          });
                        },
                        icon: securtext1
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                      hintText: "Confirm your password",
                      contentPadding: EdgeInsets.only(left: 18, right: 18),
                      filled: true,
                      fillColor: Color(0xffE7E7E6),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                  obscureText: securtext1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Checkbox(
                      value: checkTerms,
                      onChanged: (bool? value1) {
                        setState(() {
                          checkTerms = value1 ?? false;
                        });
                      },
                    ),
                    Row(
                      children: [
                        CustomText(
                            text: "Terms & Conditions , Privacy Policy ",
                            size: 16,
                            weight: FontWeight.w400,
                            color: Colors.black),
                        CustomText(
                            text: "*",
                            size: 25,
                            weight: FontWeight.w500,
                            color: Color(0xffEBCF71))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Checkbox(
                      value: checkMarketing,
                      onChanged: (bool? value) {
                        setState(() {
                          checkMarketing = value ?? false;
                        });
                      },
                    ),
                    CustomText(
                        text: "Marketing promotions & Newsletter",
                        size: 16,
                        weight: FontWeight.w400,
                        color: Colors.black)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "Home");
                },
                child: Container(
                  height: 42.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEBCF71),
                  ),
                  child: Center(
                      child: CustomText(
                          text: "Create",
                          size: 16,
                          weight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
