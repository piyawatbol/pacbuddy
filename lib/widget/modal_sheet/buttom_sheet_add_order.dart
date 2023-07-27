import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/order/add_order_controller.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

void showCustomBottomSheetAddorder(BuildContext context) {
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
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GetBuilder<AddOrderController>(
          init: AddOrderController(),
          builder: (controller) {
            return SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.filterList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      controller.onSelect(controller.filterList[index]);
                    },
                    trailing:
                        controller.filterSelect == controller.filterList[index]
                            ? Icon(
                                Icons.circle,
                                color: primaryColor,
                              )
                            : Icon(
                                Icons.circle_outlined,
                                color: primaryColor,
                              ),
                    title: AutoText(
                      "${controller.filterList[index]}",
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}
