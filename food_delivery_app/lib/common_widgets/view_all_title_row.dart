import 'package:flutter/material.dart';

import '../common/color_extention.dart';

class ViewAllTitleRow extends StatelessWidget {


  final VoidCallback onView;
  final String title;
  const ViewAllTitleRow({super.key, required this.title,required this.onView});




  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Tcolor.primary_text,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: onView, child: Text(
          "View all",
          style: TextStyle(
            color: Tcolor.primary,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        ),



      ],
    );
  }
}
