import 'package:flutter/material.dart';

import '../common/color_extention.dart';

class CategoryCell extends StatelessWidget {

  final Map cObj;
  final VoidCallback onTap;
    const CategoryCell({super.key,required this.cObj,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
              Image.asset(
                cObj["image"].toString(),
                width: 85,
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 4,),
            Text(
              cObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Tcolor.secondary_text,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
