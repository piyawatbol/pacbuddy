import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/list/product_add_grid_list.dart';

class ChooseProductPromotionScreen extends StatelessWidget {
  const ChooseProductPromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar("เลือกสินค้า"),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ProductAddGridList(),
                  SizedBox(
                    height: size.height * 0.1,
                  )
                ],
              ),
            ),
            buildBottom(),
          ],
        ),
      ),
    );
  }

  Widget buildBottom() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: CustomButton(
            "ถัดไป",
            onTap: () {
              Get.toNamed('/add_promotion');
            },
            height: 45,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
