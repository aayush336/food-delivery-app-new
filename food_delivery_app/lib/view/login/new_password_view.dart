import 'package:flutter/material.dart';

import '../../common/color_extention.dart';
import '../../common_widgets/round_btn.dart';
import '../../common_widgets/round_textfield.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {

  TextEditingController textPwd = TextEditingController();
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
                'Create New Password',
                style:TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Tcolor.primary_text,
                ),
              ),

              Text(
                'Please create a new password.',
                style:TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Tcolor.secondary_text,
                ),
              ),
              const SizedBox(height: 25),

              RoundTextfield(hintText: 'New Password',controller: textPwd,obscureText: true,),
              const SizedBox(height: 20),
              RoundTextfield(hintText: 'Confirm Password',controller: textConfirmPwd,obscureText: true,),
              const SizedBox(height: 25),

              RoundButton(title: "Next", onPressed: (){}),
              const SizedBox(height: 4,),
            ],
          ),
        ),
      ),
    );
  }
}