import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/cart_button.dart';
import 'package:packbuddy/widget/button/custom_button.dart';

import 'package:packbuddy/widget/textfeild/custom_textfeild2.dart';

class TransportDetailScreen extends StatelessWidget {
  const TransportDetailScreen({super.key});

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
          "รายละเอียดการขนส่ง",
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
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      CustomTextFeild2(
                        title: "ตัวหนอนกันกระแทก",
                      ),
                      CustomTextFeild2(
                        title: "Bubble กันกระแทก",
                      ),
                      CustomTextFeild2(
                        title: "ช่องทางจัดส่ง",
                      ),
                      SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: CustomButton(
                      "สร้างออเดอร์",
                      onTap: () {
                        Get.toNamed('/confirm_order');
                      },
                      width: size.width,
                      height: 45,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
