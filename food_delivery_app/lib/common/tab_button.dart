import 'package:flutter/material.dart';

import 'color_extention.dart';

class TabButton extends StatelessWidget {

  final VoidCallback onTap;
  final String title;
  final String image;
  final bool isSelected;
  const TabButton({super.key, required this.title, required this.onTap, required this.isSelected, required this.image});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 15,
            height: 15,
            color: isSelected? Tcolor.primary: Tcolor.placeholder_color,
          ),
          const SizedBox(height: 4,),
          Text(
            title,
            style: TextStyle(
              color: isSelected?Tcolor.primary:Tcolor.placeholder_color,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
