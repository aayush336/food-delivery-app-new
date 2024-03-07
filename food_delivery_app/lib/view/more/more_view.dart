import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/more/about_us_view.dart';
import 'package:food_delivery_app/view/more/inbox_view.dart';
import 'package:food_delivery_app/view/more/payment_details_view.dart';


import '../../common/color_extention.dart';

import 'my_order_view.dart';
import 'notification_view.dart';

class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  List moreArr = [
    {
      "index": "1",
      "name": "Payment Details",
      "image": "assets/image/more_payment.png",
      "base": 0
    },
    {
      "index": "2",
      "name": "My Orders",
      "image": "assets/image/more_my_order.png",
      "base": 0
    },
    {
      "index": "3",
      "name": "Notifications",
      "image": "assets/image/more_notification.png",
      "base": 15
    },
    {
      "index": "4",
      "name": "Inbox",
      "image": "assets/image/more_inbox.png",
      "base": 0
    },
    {
      "index": "5",
      "name": "About Us",
      "image": "assets/image/more_info.png",
      "base": 0
    },
    {
      "index": "6",
      "name": "Logout",
      "image": "assets/image/more_info.png",
      "base": 0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      "More",
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
                                builder: (context) => const MyOrderView()));
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
              ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: moreArr.length,
                  itemBuilder: (context, index) {
                    var mObj = moreArr[index] as Map? ?? {};
                    var countBase = mObj["base"] as int? ?? 0;
                    return InkWell(
                      onTap: () {
                        switch (mObj["index"].toString()) {
                          case "1":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const PaymentDetailsView()));

                            break;

                          case "2":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyOrderView()));
                          case "3":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const NotificationsView()));
                          case "4":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const InboxView()));
                          case "5":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutUsView()));
                          // case "6":
                          //   ServiceCall.logout();

                          default:
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 12),
                              decoration: BoxDecoration(
                                  color: Tcolor.textfield,
                                  borderRadius: BorderRadius.circular(5)),
                              margin: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Tcolor.placeholder_color,
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    alignment: Alignment.center,
                                    child: Image.asset(mObj["image"].toString(),
                                        width: 25,
                                        height: 25,
                                        fit: BoxFit.contain),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      mObj["name"].toString(),
                                      style: TextStyle(
                                          color: Tcolor.primary_text,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  if (countBase > 0)
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(12.5)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        countBase.toString(),
                                        style: TextStyle(
                                            color: Tcolor.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Tcolor.textfield,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/image/btn_next.png",
                                  width: 10,
                                  height: 10,
                                  color: Tcolor.primary_text),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}