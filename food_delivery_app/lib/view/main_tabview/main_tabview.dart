import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/tab_button.dart';
import 'package:food_delivery_app/view/home/home_view.dart';
import 'package:food_delivery_app/view/menu/menu_view.dart';
import 'package:food_delivery_app/view/more/more_view.dart';
import 'package:food_delivery_app/view/offer/offer_view.dart';
import 'package:food_delivery_app/view/profile/profile_view.dart';

import '../../common/color_extention.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {

  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket() ;
  Widget selectPageView = HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket,child: selectPageView,),
      backgroundColor: const Color(0xfff5f5f5),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 55,
        height: 55,
        child: FloatingActionButton(onPressed: (){
          if(selectTab != 2){
            selectTab = 2;
            selectPageView = HomeView();
          }
          if(mounted){
          setState(() {

          });
          }
        },
          shape:CircleBorder() ,
        backgroundColor: selectTab == 2 ? Tcolor.primary:Tcolor.placeholder_color,
        child: Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Image.asset("assets/image/tab_home.png",width: 35,height: 35,)),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        surfaceTintColor: Tcolor.white,
        elevation: 1,
        height: 64,
        notchMargin: 12,
        shape: const CircularNotchedRectangle(),
        child: Container(

          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(title: 'Menu', onTap: (){
                      if(selectTab != 0){
                        selectTab = 0;
                        selectPageView = const MenuView();
                      }
                      if(mounted){
                        setState(() {
            
                        });
                      }
                    },
                    isSelected: selectTab == 0 ,
                    image: "assets/image/tab_menu.png"),
            
                TabButton(title: 'Offers', onTap: (){
                  if(selectTab != 1){
                    selectTab = 1;
                    selectPageView = const OfferView();
                  }
                  if(mounted){
                    setState(() {
            
                    });
                  }
                },
                    isSelected: selectTab ==  1,
                    image: "assets/image/tab_offer.png"),
            
                TabButton(title: 'Profile', onTap: (){
                  if(selectTab != 3){
                    selectTab = 3;
                    selectPageView = ProfileView();
                  }
                  if(mounted){
                    setState(() {
            
                    });
                  }
                },
                    isSelected: selectTab == 3 ,
                    image: "assets/image/tab_profile.png"),
            
                TabButton(title: 'More', onTap: (){
                  if(selectTab != 4){
                    selectTab = 4;
                    selectPageView = MoreView();
                  }
                  if(mounted){
                    setState(() {
            
                    });
                  }
                },
                    isSelected: selectTab == 4 ,
                    image: "assets/image/tab_more.png"),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
