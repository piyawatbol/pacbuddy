import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/profile_controller.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/modal_sheet/button_sheet_pickimage.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: BackAppBar(
            "Profile",
            iconButton: controller.enableTextFeild == false
                ? IconButton(
                    onPressed: () {
                      controller.OnEnableTextFeild();
                    },
                    icon: Icon(Icons.edit, size: 18))
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: () {
                          controller.OnEnableTextFeild();
                        },
                        child: AutoText(
                          "save",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(1, 2),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          buildphoFilePhoto(context, controller),
                          CustomTextFeild(
                              title: "ชื่อ",
                              enable: controller.enableTextFeild.value),
                          CustomTextFeild(
                              title: "นามสกุล",
                              enable: controller.enableTextFeild.value),
                          CustomTextFeild(
                              title: "อีเมล",
                              enable: controller.enableTextFeild.value),
                          CustomTextFeild(
                              title: "เบอร์โทร",
                              enable: controller.enableTextFeild.value),
                          CustomTextFeild(
                              title: "ที่อยู่",
                              enable: controller.enableTextFeild.value),
                          CustomTextFeild(
                              title: "ตำบล",
                              enable: controller.enableTextFeild.value),
                          CustomTextFeild(
                              title: "จังหวัด",
                              enable: controller.enableTextFeild.value),
                          CustomTextFeild(
                            title: "รหัสไปรษณีย์",
                            enable: controller.enableTextFeild.value,
                          ),
                          SizedBox(height: 15)
                        ],
                      ))),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildphoFilePhoto(context, ProfileController controller) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: size.height * 0.18,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade100,
            image: controller.pickedFile == null
                ? null
                : DecorationImage(
                    fit: BoxFit.cover,
                    image: FileImage(
                      File(controller.pickedFile!.path),
                    ),
                  ),
          ),
        ),
        controller.enableTextFeild.value
            ? GestureDetector(
                onTap: () {
                  showCustomBottomSheetPickImage(context);
                },
                child: Icon(
                  Icons.edit,
                  color: Colors.grey.shade700,
                ),
              )
            : SizedBox()
      ],
    );
  }
}
