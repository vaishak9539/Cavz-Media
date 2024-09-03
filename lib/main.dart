import 'package:cavz_media/screens/create_account.dart';
import 'package:cavz_media/screens/get_started.dart';
import 'package:cavz_media/screens/home.dart';
import 'package:cavz_media/screens/loginpage.dart';
import 'package:cavz_media/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context,
        splitScreenMode: true,
        minTextAdapt: true,
       
        );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cavz Media',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: GetStarted(),
       routes: {
        "Splash" : (context)=>  const Splash(),
        "GetStart" :(context)=>  const GetStarted(),
        "Loginpage" : (context)=>  const LoginPage(),
         "CreatAccount" : (context)=>  const CreateAccount(),
         "Home" :(context)=> const Home()

      },
      initialRoute: "Splash",
    );
  }
}

