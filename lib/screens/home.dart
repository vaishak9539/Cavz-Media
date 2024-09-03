// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cavz_media/custom/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 28.h,
                      width: 33.w,

                      // ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.asset(
                          "assets/images/profile.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                            text: "Hello Onky",
                            size: 20,
                            weight: FontWeight.w500,
                            color: Colors.black),
                        CustomText(
                            text: "Welcome Back",
                            size: 14,
                            weight: FontWeight.w400,
                            color: Colors.black)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: CustomText(
                              text: "My Wallet",
                              size: 10,
                              weight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.6),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 28.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color(0xffEBCF71)),
                                      child: Image.asset(
                                          "assets/images/account_balance_wallet.png"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: CustomText(
                                        text: "\$1000",
                                        size: 16,
                                        weight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17, left: 15),
                    child: Container(
                      height: 28.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffEBCF71)),
                      child: Image.asset("assets/images/Vector (1).png"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CustomText(
                        text: "Rent for",
                        size: 20,
                        weight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 130.h,
                        width: 167.w,
                        child: Card(
                          elevation: 1,
                          color: Color(0xffE7E7E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Image.asset(
                                  "assets/images/img_1-removebg-preview.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    child: Icon(
                                      Icons.info_outline,
                                      size: 15,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 3),
                                    child: CustomText(
                                        text: "Me",
                                        size: 16,
                                        weight: FontWeight.w600,
                                        color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130.h,
                        width: 167.w,
                        child: Card(
                          elevation: 1,
                          color: Color(0xffE7E7E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Image.asset(
                                  "assets/images/img_2-removebg-preview.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    child: Icon(
                                      Icons.info_outline,
                                      size: 15,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 3),
                                    child: CustomText(
                                        text: "My company",
                                        size: 16,
                                        weight: FontWeight.w600,
                                        color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 130.h,
                        width: 167.w,
                        child: Card(
                          elevation: 1,
                          color: Color(0xffE7E7E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Image.asset(
                                  "assets/images/img_2-removebg-preview.png",
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    child: Icon(
                                      Icons.info_outline,
                                      size: 15,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 3),
                                    child: CustomText(
                                        text: "Wedding",
                                        size: 16,
                                        weight: FontWeight.w600,
                                        color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130.h,
                        width: 167.w,
                        child: Card(
                          elevation: 1,
                          color: Color(0xffE7E7E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Image.asset(
                                  "assets/images/img_4-removebg-preview.png",
                                  fit: BoxFit.contain,
                                  width: 140,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    child: Icon(
                                      Icons.info_outline,
                                      size: 15,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 3),
                                    child: CustomText(
                                        text: "Events",
                                        size: 16,
                                        weight: FontWeight.w600,
                                        color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 130.h,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/background.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "GET FIRST DAY FREE ON YOUR FIRST CAR BOOKING ",
                          style: GoogleFonts.bebasNeue(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 40),
                    child: Image.asset(
                      "assets/images/car.png",
                      width: 150,
                    ),
                  ),
                  Positioned(
                    right: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        height: 25.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff252725),
                        ),
                        child: Center(
                          child: CustomText(
                              text: "Use Code: D010",
                              size: 11,
                              weight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 75,
                    top: 70,
                    child: CustomText(
                        text: "Explore Deal",
                        size: 11,
                        weight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Positioned(
                    right: 55,
                    top: 70,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 15,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 7.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff585A57)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Container(
                        height: 7.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffB0B1AF)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Container(
                        height: 8.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffE7E7E6)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 150.h,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("assets/images/card 1.jpeg")),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 150.h,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("assets/images/card 2.jpeg")),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 150.h,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("assets/images/card 3.jpeg")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        backgroundColor: Color(0xffEBCF71),
        child: Image.asset("assets/images/Group 155.png"),
      ),
    );
  }
}
