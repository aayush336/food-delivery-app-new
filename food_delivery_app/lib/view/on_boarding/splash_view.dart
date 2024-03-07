import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login/welcome_view.dart';

class SplashView extends StatefulWidget {
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState(){
    super.initState();
    goWelcomePage();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/image/splash_bg.png",
          width: media.width,
          height: media.height,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/image/logo.png",
          width: media.width * 0.7,
          height: media.height * 0.7,
          fit: BoxFit.contain,
        ),
      ],
    ));
  }

  void goWelcomePage() async {
    await Future.delayed(Duration(seconds: 2));
    // this line introduces a 2-second delay before proceeding to the next line.
    welcomePage();
  }

  void welcomePage(){
    Navigator.push(context, MaterialPageRoute(builder:(context)=>WelcomeView()));
  }
}
