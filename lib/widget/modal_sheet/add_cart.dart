import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/order/add_order_controller.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

void addCart(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return CustomBottomSheetContent();
    },
  );
}

class CustomBottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        // height: size.height * 0.32,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GetBuilder<AddOrderController>(
          init: AddOrderController(),
          builder: (controller) {
            return Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/image.svg',
                              width: 30,
                              height: 30,
                              colorFilter: ColorFilter.mode(
                                  Colors.grey.shade400, BlendMode.srcIn),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoText("ปากกาลูกลื่น", fontSize: 16),
                            AutoText(
                              "10 ฿",
                              fontSize: 16,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (controller.count.value != 0) {
                                controller.onMinusCount();
                              }
                            },
                            child: Icon(
                              Icons.remove_circle,
                              color: Colors.grey.shade300,
                              size: 50,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: AutoText(
                              "${controller.count}",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.onAddCount();
                            },
                            child: Icon(
                              Icons.add_circle_sharp,
                              color: primaryColor,
                              size: 50,
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomButton(
                      "เพิ่มลงตระกร้า",
                      onTap: () {
                        Get.back();
                      },
                      width: size.width * 0.78,
                      fontSize: 14,
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            );
          },
        ));
  }
}
