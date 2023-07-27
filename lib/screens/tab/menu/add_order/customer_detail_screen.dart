// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/cart_button.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild2.dart';

class CustomerDetailScreen extends StatelessWidget {
  CustomerDetailScreen({super.key});

  final FocusNode focusNode = FocusNode();
  bool keyboard = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: BackAppBar(
          "รายละเอียดลูกค้า",
          iconButton: CartButton(),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Focus(
                    focusNode: focusNode,
                    onFocusChange: (value) {
                      if (value) {
                        keyboard = true;
                      } else {
                        keyboard = false;
                      }
                    },
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        CustomTextFeild2(
                          title: "ชื่อผู้ซื้อ",
                        ),
                        CustomTextFeild2(
                          title: "นามสกุล",
                        ),
                        CustomTextFeild2(
                          title: "เบอร์โทร",
                        ),
                        CustomTextFeild2(
                          title: "อายุ",
                        ),
                        CustomTextFeild2(
                          title: "เพศ",
                        ),
                        CustomTextFeild2(
                          title: "เลขประจำตัวผู้เสียภาษี",
                        ),
                        CustomTextFeild2(
                          title: "ประเภทผู้เสียภาษี",
                        ),
                        CustomTextFeild2(
                          title: "ที่อยู่",
                        ),
                        CustomTextFeild2(
                          title: "รหัสไปรษณีย์",
                        ),
                        CustomTextFeild2(
                          title: "ตำบล",
                        ),
                        CustomTextFeild2(
                          title: "อำเภอ",
                        ),
                        CustomTextFeild2(
                          title: "จังหวัด",
                        ),
                        CustomTextFeild2(
                          title: "ช่องทางการขาย",
                        ),
                        CustomTextFeild2(
                          title: "ชื่อ social media",
                        ),
                        CustomTextFeild2(
                          title: "ช่องทางการชำระเงิน",
                        ),
                        CustomTextFeild2(
                          title: "หมายเหตุ",
                        ),
                        SizedBox(height: 90),
                      ],
                    ),
                  ),
                ),
              ),
              buildBottom(context)
            ],
          ),
        ),
      ),
    );
  }

  buildBottom(context) {
    var size = MediaQuery.of(context).size;
    return Visibility(
      visible: keyboard == true ? false : true,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: size.width,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: CustomButton(
              "ถัดไป",
              onTap: () {
                Get.toNamed('/recipient_detail');
              },
              height: 45,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
