import 'package:flutter/material.dart';

import '../../common/color_extention.dart';
import '../../common_widgets/round_btn.dart';
import '../../common_widgets/round_textfield.dart';
import 'login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPwd = TextEditingController();
  TextEditingController textName = TextEditingController();
  TextEditingController textMobile = TextEditingController();
  TextEditingController textAddress = TextEditingController();
  TextEditingController textConfirmPwd = TextEditingController();

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
                'Sign Up',
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

              RoundTextfield(hintText: 'Name',controller: textName,keyboardType: TextInputType.name,),
              const SizedBox(height: 20,),
              RoundTextfield(hintText: 'Email',controller: textEmail,keyboardType: TextInputType.emailAddress,),
              const SizedBox(height: 20,),
              RoundTextfield(hintText: 'Mobile No',controller: textMobile,keyboardType: TextInputType.phone,),
              const SizedBox(height: 20,),
              RoundTextfield(hintText: 'Address',controller: textAddress,keyboardType: TextInputType.streetAddress,),
              const SizedBox(height: 20,),
              RoundTextfield(hintText: 'Password',controller: textPwd,obscureText: true,),
              const SizedBox(height: 20,),
              RoundTextfield(hintText: 'Confirm Password',controller: textConfirmPwd,obscureText: true,),
              const SizedBox(height: 25,),

              RoundButton(title: "Sign Up", onPressed: (){}),
              const SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Already Have An Account?'
                    ,style: TextStyle(
                        color: Tcolor.secondary_text,
                        fontSize: 15 ,fontWeight: FontWeight.w500),),

                  TextButton (
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginView()));
                      },
                      child:Text('Sign In'
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
