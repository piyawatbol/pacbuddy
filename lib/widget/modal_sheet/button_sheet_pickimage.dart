import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/profile_controller.dart';

import 'package:packbuddy/widget/text/auto_text.dart';

void showCustomBottomSheetPickImage(BuildContext context) {
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
        height: size.height * 0.17,
        child: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (controller) {
            return Column(
              children: [
                ListTile(
                  title: AutoText("ถ่ายรูปภาพ"),
                  leading: Icon(Icons.camera_alt),
                  onTap: () {
                    controller.pickCamera();
                  },
                ),
                ListTile(
                  title: AutoText("เลือกรูปภาพ"),
                  leading: Icon(Icons.photo),
                  onTap: () {
                    controller.pickImage();
                  },
                )
              ],
            );
          },
        ));
  }
}
