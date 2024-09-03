// ignore_for_file: prefer_const_constructors

import 'package:cavz_media/custom/customtext.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(40),
              ),
              Image.asset("assets/images/IMG14.png"),
              CustomText(
                  text: "Lorem ipsum dolor",
                  size: 20,
                  weight: FontWeight.w500,
                  color: Colors.black),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: CustomText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(height: ScreenUtil().setHeight(30)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CustomText(
                        text: "Select Preferred Language",
                        size: 20,
                        weight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        hint: Text('Select Language'),
                        value: selectedLanguage,
                        isExpanded: true,
                        items: <String>['English', 'Arabic']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                Text(value),
                                Spacer(),
                                if (selectedLanguage == value)
                                  Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.amber,
                                  )
                                else
                                  Icon(
                                    Icons.radio_button_unchecked,
                                    color: Colors.grey,
                                  ),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedLanguage = newValue!;
                          });
                        },
                        dropdownStyleData: DropdownStyleData(
                            width: 350,
                            offset: Offset(-10, -20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(140),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "Loginpage");
                },
                child: Container(
                  height: ScreenUtil().setHeight(42),
                  width: ScreenUtil().setWidth(320),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEBCF71),
                  ),
                  child: Center(
                      child: CustomText(
                          text: "GET STARTED",
                          size: 16,
                          weight: FontWeight.w600,
                          color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
