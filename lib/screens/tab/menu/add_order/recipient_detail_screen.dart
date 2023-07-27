// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/cart_button.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild2.dart';

class RecipientDetailScreen extends StatelessWidget {
  RecipientDetailScreen({super.key});

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
        backgroundColor: Colors.white,
        appBar: BackAppBar(
          "ผู้รับสินค้า",
          iconButton: CartButton(),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
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
                        SizedBox(height: 15),
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
                        SizedBox(height: 120),
                      ],
                    ),
                  ),
                ),
              ),
              buildButtom(context)
            ],
          ),
        ),
      ),
    );
  }

  buildButtom(context) {
    var size = MediaQuery.of(context).size;
    return Visibility(
      visible: keyboard ? false : true,
      child: Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    checkColor: Colors.white,
                    activeColor: primaryColor,
                    onChanged: (bool? value) {},
                  ),
                  AutoText("สถานที่เดียวกับที่อยู่ลูกค้า")
                ],
              ),
              CustomButton(
                "ถัดไป",
                onTap: () {
                  Get.toNamed('/transport_detail');
                },
                width: size.width,
                height: 45,
                fontSize: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
