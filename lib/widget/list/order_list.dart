import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed('/order_detail');
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoText(
                              "SPXTH735705492820",
                              fontSize: 14,
                            ),
                            AutoText(
                              "",
                              color: Colors.grey.shade500,
                              fontSize: 14,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                AutoText(
                                  "12/6/2566 16:49:12",
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                AutoText(
                                  "150 ฿",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: size.width * 0.22,
                      height: 22,
                      decoration: BoxDecoration(
                        color: index == 1 ? Colors.red : Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      child: Center(
                        child: index == 1
                            ? AutoText(
                                "จัดส่งสำไม่เร็จ",
                                color: Colors.white,
                                fontSize: 12,
                              )
                            : AutoText(
                                "จัดส่งสำเร็จ",
                                color: Colors.white,
                                fontSize: 12,
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
