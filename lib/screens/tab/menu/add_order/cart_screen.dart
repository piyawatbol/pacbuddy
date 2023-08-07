import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar("ตะกร้า"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildListCart(context),
            ],
          ),
        ),
      ),
    );
  }

  buildListCart(context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 5, bottom: 30),
        itemCount: 20,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(2, 2),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/image.svg',
                        colorFilter: ColorFilter.mode(
                            Colors.grey.shade300, BlendMode.srcIn),
                      )),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoText(
                          "ปากกาลูกลื่น",
                          fontSize: 14,
                        ),
                        AutoText(
                          "10 ฿",
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.remove_circle,
                      color: secondColor.withOpacity(0.3),
                      size: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: AutoText("2"),
                    ),
                    Icon(
                      Icons.add_circle_sharp,
                      color: secondColor,
                      size: 20,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: AutoText(
                    "100 ฿",
                    fontSize: 16,
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
