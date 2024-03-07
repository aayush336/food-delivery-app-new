import 'package:flutter/material.dart';

import '../common/color_extention.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onTap;
  const PopularRestaurantRow({super.key, required this.pObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              pObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 8,
            ),

            const SizedBox(
              height: 12,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pObj["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Tcolor.primary_text,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Image.asset(
                        "assets/image/rate.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),

                      const SizedBox(
                        width: 4,
                      ),

                      Text(
                        pObj["rate"],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Tcolor.primary, fontSize: 11),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "(${pObj["ratings"]} Ratings)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Tcolor.secondary_text, fontSize: 11),
                      ),

                      const SizedBox(
                        width: 8,
                      ),

                      Text(
                        pObj["type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Tcolor.secondary_text, fontSize: 11),
                      ),
                      Text(
                        " . ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Tcolor.primary, fontSize: 11),
                      ),
                      Text(
                        pObj["food-type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Tcolor.secondary_text, fontSize: 12),
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}