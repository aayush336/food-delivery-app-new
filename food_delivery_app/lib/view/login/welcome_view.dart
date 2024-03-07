import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extention.dart';
import 'package:food_delivery_app/common_widgets/round_btn.dart';
import 'package:food_delivery_app/view/login/login_view.dart';
import 'package:food_delivery_app/view/login/signup_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    
    var media = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/image/welcome_top_shape.png",
                width: media.width,
              ),

              Image.asset(
                "assets/image/logo.png",
                width: media.width*0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: media.width*0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Diccover the best food in your locality, and get delivered in 10mins',style: TextStyle(color: Tcolor.secondary_text,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
          ),
          SizedBox(height: media.width*0.1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: RoundButton(title: 'Login', onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginView()));

            }),
          ),
          SizedBox(height: media.width*0.05,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: RoundButton(title: 'Create an Account',
                type: RoundButtonType.textPrimary,
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUpView()));

                }),
          ),

        ],
      ),
    );
  }
}
