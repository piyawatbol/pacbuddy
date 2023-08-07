import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        "รายการโปรโมรชั่น",
        iconButton: GestureDetector(
          onTap: () {
            Get.toNamed('/choose_product_promotion');
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.add,
              color: primaryColor,
            ),
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(1, 2),
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
                            margin: EdgeInsets.only(right: 10),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/image.svg',
                                width: 30,
                                height: 30,
                                colorFilter: ColorFilter.mode(
                                  Colors.grey.shade300,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoText(
                                "ปากกาเหมา",
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                              AutoText(
                                "100 ฿",
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: primaryColor,
                              ),
                              AutoText(
                                "ปากกา 20 แท่ง",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: primaryColor,
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
