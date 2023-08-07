import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild2.dart';

class AddPromotionScreen extends StatelessWidget {
  const AddPromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: BackAppBar(
          "เพิ่มโปรโมชั่น",
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade100,
                      border: Border.all(color: Colors.grey.shade200)),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/image.svg',
                      width: 50,
                      height: 50,
                      colorFilter: ColorFilter.mode(
                        Colors.grey.shade300,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomTextFeild2(title: "ชื่อกลุ่มสินค้า"),
                CustomButton(
                  "ถัดไป",
                  onTap: () {
                    Get.toNamed('/confirm_promotion');
                  },
                  width: size.width * 0.3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
