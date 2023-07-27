import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(
        "รายการโปรโมรชั่น",
        iconButton: GestureDetector(
          onTap: () {
            Get.toNamed('/choose_product_promotion');
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.add),
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
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoText(
                                "ปากกาเหมา",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              AutoText(
                                "100 ฿",
                                fontSize: 13,
                              ),
                              AutoText(
                                "ปากกา 20 แท่ง",
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
                          color: Colors.grey.shade700,
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
