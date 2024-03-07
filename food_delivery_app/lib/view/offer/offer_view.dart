import 'package:flutter/material.dart';
import 'package:food_delivery_app/common_widgets/popular_restaurant_row.dart';
import 'package:food_delivery_app/common_widgets/round_btn.dart';

import '../../common/color_extention.dart';

class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  TextEditingController txtSearch = TextEditingController();

  List offerArr = [
    {
      "image":"assets/image/offer_1.png",
      "name":"Minute By Tuk Tuk",
      "rate":"4.9",
      "ratings":"124",
      "type":"Cafe",
      "food-type":"Indian",
      "location":"Western"
    },
    {
      "image":"assets/image/offer_2.png",
      "name":"Cafe De Noir",
      "rate":"4.9",
      "ratings":"124",
      "type":"Hotel",
      "food-type":"Indian",
      "location":"Eastern"
    },
    {
      "image":"assets/image/offer_3.png",
      "name":"Bakes By Tella",
      "rate":"4.6",
      "ratings":"100",
      "type":"Cafe",
      "food-type":"Indian",
      "location":"Southern"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Offers",
                      style: TextStyle(
                          color: Tcolor.primary_text,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // builder: (context) => const MyOrderView()));
                        builder: (context) =>  Container()));
                      },
                      icon: Image.asset(
                        "assets/image/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find discounts, Offers special\nmeals and more!",
                      style: TextStyle(
                          color: Tcolor.secondary_text,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: 140,
                  height: 30,
                  child: RoundButton(title: "check Offers", fontSize: 12 , onPressed: () {}),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: offerArr.length,
                itemBuilder: ((context, index) {
                  var pObj = offerArr[index] as Map? ?? {};
                  return PopularRestaurantRow(
                    pObj: pObj,
                    onTap: (){},
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}