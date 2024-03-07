import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extention.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController ? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;


  const RoundTextfield({super.key,required this.hintText, this.keyboardType,this.controller,this.obscureText=false, this.bgColor,this.left});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor?? Tcolor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if(left!=null)
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: left,
          ),


          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,

                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Tcolor.placeholder_color,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )
            
            
              ),
            ),
          ),
        ],
      ),
    );
  }
}
