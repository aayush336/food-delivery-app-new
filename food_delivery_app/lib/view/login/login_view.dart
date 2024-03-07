import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extention.dart';
import 'package:food_delivery_app/common_widgets/round_btn.dart';
import 'package:food_delivery_app/common_widgets/round_icon_button.dart';
import 'package:food_delivery_app/common_widgets/round_textfield.dart';
import 'package:food_delivery_app/view/login/reset_pwd.dart';
import 'package:food_delivery_app/view/login/signup_view.dart';
import 'package:food_delivery_app/view/on_boarding/on_boarding_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController textEmail = TextEditingController();
  TextEditingController textPwd = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                const SizedBox(height: 65),
                Text(
                  'Login',
                  style:TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Tcolor.primary_text,
                  ),
                ),

              Text(
                  'Add Your Details Here',
                  style:TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Tcolor.secondary_text,
                  ),
                ),
                const SizedBox(height: 25),

              RoundTextfield(hintText: 'Your Email',controller: textEmail,keyboardType: TextInputType.emailAddress,),
              const SizedBox(height: 20,),
              RoundTextfield(hintText: 'Password',controller: textPwd,obscureText: true,),
              const SizedBox(height: 25,),
              RoundButton(title: "Login", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>OnBoardingView()));
              }),
              const SizedBox(height: 4,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ResetPaswordView()));
              },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Tcolor.secondary_text,
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                    ),
                  )),
              const SizedBox(height: 28,),
              TextButton(onPressed: (){},
                  child: Text(
                    'or Login With',
                    style: TextStyle(
                        color: Tcolor.secondary_text,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                    ),
                  )),
              const SizedBox(height: 28,),
              RoundIconButton(onPressed: (){}, title: 'Login in with Facebook', icon: 'assets/image/facebook_logo.png', color: Colors.blue),
              const SizedBox(height: 15,),
             RoundIconButton(onPressed: (){}, title: 'Login in with Google', icon: 'assets/image/google_logo.png', color: Colors.redAccent),
              const SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Dont Have An Account?'
                    ,style: TextStyle(
                        color: Tcolor.secondary_text,
                        fontSize: 15 ,fontWeight: FontWeight.w500),),

                  TextButton (
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUpView()));
                    },
                      child:Text('Sign Up'
                    ,style: TextStyle(
                        color: Tcolor.primary,
                        fontSize: 18,fontWeight: FontWeight.w600),)),
                ],

              ),


            ],

          ),
        ),
      ),
    );
  }
}
