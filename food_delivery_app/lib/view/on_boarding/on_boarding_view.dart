import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extention.dart';
import 'package:food_delivery_app/common_widgets/round_btn.dart';
import 'package:food_delivery_app/view/main_tabview/main_tabview.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController pageController = PageController();
  List pageArr = [
  {"title":"Find Food You Love",
    "subtitle":"Discover the best food items over 1000 restaurants \n and fast delivery to your door steps.",
    "image" : "assets/image/on_boarding_1.png",
  },
  {"title":"Fast Delivery",
    "subtitle":"Fast food Delivery to your home, office \n wherever you are.",
    "image":"assets/image/on_boarding_2.png",
  },
  {"title":"Live Tracking",
    "subtitle":"Real time tracking your food on the app once your order is placed",
    "image":"assets/image/on_boarding_3.png",
  },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        selectPage =  pageController.page?.floor() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
              itemCount: pageArr.length,
              controller: pageController,
              itemBuilder: (context,index){
                var pObj = pageArr[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(pObj["image"].toString(),
                            width: media.width * 0.65,
                            fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: media.width * 0.07,),
                  Text(
                    pObj['title'].toString(),
                    style: TextStyle(
                      color: Tcolor.primary_text,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: media.width * 0.07,),
                  Text(
                    pObj['subtitle'].toString(),
                    style: TextStyle(
                      color: Tcolor.primary_text,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: media.width * 0.4,),


                  Column(
                    children: [
                      RoundButton(title: 'Next', onPressed: (){
                        if(selectPage >=2){
                        //   home screen
                            Navigator.push(context,MaterialPageRoute(builder: (context) => MainTabView() ));
                        }
                        else{
                          setState(() {
                            selectPage = selectPage + 1;
                            pageController.animateToPage(selectPage, duration: Duration(milliseconds: 500),
                                curve: Curves.bounceInOut);
                          });
                        }
                      }),

                    ],

                  )

                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
