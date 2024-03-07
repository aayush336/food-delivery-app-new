import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extention.dart';
import 'package:food_delivery_app/common_widgets/round_btn.dart';
import 'package:food_delivery_app/common_widgets/round_icon_button.dart';
import 'package:food_delivery_app/common_widgets/round_textfield.dart';
import 'package:food_delivery_app/view/login/new_password_view.dart';
import 'package:food_delivery_app/view/login/otp_view.dart';
import 'package:food_delivery_app/view/login/signup_view.dart';

class ResetPaswordView extends StatefulWidget {
  const ResetPaswordView({super.key});

  @override
  State<ResetPaswordView> createState() => _ResetPaswordViewState();
}

class _ResetPaswordViewState extends State<ResetPaswordView> {

  TextEditingController textEmail = TextEditingController();

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
                'Reset Password',
                style:TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Tcolor.primary_text,
                ),
              ),

              Text(
                'Please enter your email to recive a link to create a new password.',
                style:TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Tcolor.secondary_text,
                ),
              ),
              const SizedBox(height: 25),

              RoundTextfield(hintText: 'Your Email',controller: textEmail,keyboardType: TextInputType.emailAddress,),
              const SizedBox(height: 25),

              RoundButton(title: "Send", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>NewPasswordView()));
              }),
              const SizedBox(height: 4,),
              ],
          ),
        ),
      ),
    );
  }
}
