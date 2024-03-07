import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/common_widgets/category_cell.dart';
import 'package:food_delivery_app/common_widgets/popular_restaurant_row.dart';
import 'package:food_delivery_app/common_widgets/recent_item_row.dart';
import 'package:food_delivery_app/common_widgets/round_textfield.dart';
import 'package:food_delivery_app/common_widgets/view_all_title_row.dart';

import '../../common/color_extention.dart';
import '../../common_widgets/most_popular_cell.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  TextEditingController textSearch = TextEditingController();

  List catArr =[
    {"image":"assets/image/cat_offer.png","name":"Offers"},
    {"image":"assets/image/cat_sri.png","name":"Sri Lankan"},
    {"image":"assets/image/cat_3.png","name":"Italian"},
    {"image":"assets/image/cat_4.png","name":"Indian"},
  ];
  List popArr =[
    {
      "image":"assets/image/res_1.png",
      "name":"Minute By Tuk Tuk",
      "rate":"4.9",
      "ratings":"124",
      "type":"Cafe",
      "food-type":"Indian",
      "location":"Western"
    },
    {
      "image":"assets/image/res_2.png",
      "name":"Cafe De Noir",
      "rate":"4.9",
      "ratings":"124",
      "type":"Hotel",
      "food-type":"Indian",
      "location":"Eastern"
    },
    {
      "image":"assets/image/res_3.png",
      "name":"Bakes By Tella",
      "rate":"4.6",
      "ratings":"100",
      "type":"Cafe",
      "food-type":"Indian",
      "location":"Southern"
    },

  ];

  List mostPopArr = [
    {
      "image": "assets/image/m_res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/image/m_res_2.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];
  List recentArr =[
    {
      "image":"assets/image/item_1.png",
      "name":"Pizza By Raj",
      "rate":"4.9",
      "ratings":"124",
      "type":"Cafe",
      "location":"Western"
    },
    {
      "image":"assets/image/item_2.png",
      "name":"Baritaa",
      "rate":"4.9",
      "ratings":"124",
      "type":"Hotel",
      "location":"Eastern"
    },
    {
      "image":"assets/image/item_3.png",
      "name":"Joes Pizza",
      "rate":"4.6",
      "ratings":"100",
      "type":"Cafe",
      "location":"Southern"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 46,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Good Morning Aayush!",
                        style: TextStyle(
                          color: Tcolor.primary_text,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      IconButton(
                        onPressed: (){},
                        icon: Image.asset('assets/image/shopping_cart.png',
                          width: 25,
                          height: 25,
                        ),
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 20,),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivering to!",
                        style: TextStyle(
                          color: Tcolor.secondary_text,
                          fontSize: 14,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Current Location!",
                            style: TextStyle(
                              color: Tcolor.secondary_text,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const SizedBox(width: 15,),

                          IconButton(
                            onPressed: (){},
                            icon: Image.asset('assets/image/dropdown.png',
                              width: 15,
                              height: 15,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextfield(
                    hintText: 'Search Food',
                    controller: textSearch,
                    bgColor: Tcolor.textfield,
                    left: Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Image.asset(
                        "assets/image/search.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: catArr.length,
                    itemBuilder: ((context,index){
                      var cObj = catArr[index] as Map? ??{};
                      return CategoryCell(cObj: cObj, onTap: (){});
                      }),
                  ),
                ),

                const SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ViewAllTitleRow(onView: (){},title: "Popular Restaurants",)
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: popArr.length,
                  itemBuilder: ((context,index){
                    var pObj = popArr[index] as Map? ??{};
                    return PopularRestaurantRow(pObj: pObj, onTap: (){});
                  }),
                ),

                const SizedBox(height: 10,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ViewAllTitleRow(onView: (){},title: "Most Popular",)
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: mostPopArr.length,
                    itemBuilder: ((context,index){
                      var mObj = mostPopArr[index] as Map? ??{};
                      return MostPopularCell(mObj: mObj, onTap: (){});
                    }),
                  ),
                ),


                const SizedBox(height: 10,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ViewAllTitleRow(onView: (){},title: "Recent Items",)
                ),


            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: recentArr.length,
              itemBuilder: ((context,index){
                var rObj = recentArr[index] as Map? ??{};
                return RecentItemRow(rObj: rObj, onTap: (){});
              }),
            ),



              ],
            ),
          ),
        ),
    );
  }
}
