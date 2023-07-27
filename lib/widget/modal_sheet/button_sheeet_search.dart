import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/search_controller.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

void showCustomBottomSheetSearch(BuildContext context) {
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
        child: GetBuilder<SearchController>(
          init: SearchController(),
          builder: (controller) {
            return SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.searchList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      controller.onSelect(controller.searchList[index]);
                    },
                    trailing:
                        controller.searchSelect == controller.searchList[index]
                            ? Icon(
                                Icons.circle,
                                color: primaryColor,
                              )
                            : Icon(
                                Icons.circle_outlined,
                                color: primaryColor,
                              ),
                    title: AutoText(
                      "${controller.searchList[index]}",
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}
