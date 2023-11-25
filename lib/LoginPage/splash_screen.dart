import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test4/LoginPage/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen(){
    Future.delayed(Duration(seconds: 3), () {
      Get.to(()=> LoginPage());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('image/marketku.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}