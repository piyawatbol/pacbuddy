import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar("รายละเอียดสินค้า"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: size.height * 0.32,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/image.svg',
                        width: 50,
                        height: 50,
                        colorFilter: ColorFilter.mode(
                            Colors.grey.shade300, BlendMode.srcIn),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoText(
                          "รายละเอียดสินค้า",
                          fontSize: 14,
                          color: secondColor,
                          fontWeight: FontWeight.bold,
                        ),
                        AutoText(
                          "ใช้งาน",
                          fontSize: 14,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    buildRow(context, "รหัสสินค้า", "4597346677"),
                    buildRow(context, "ชื่อสินค้า", "Logitech G Pro Wireless"),
                    buildRow(context, "ประเภทสินค้า", "mouse"),
                    buildRow(context, "Brand", "Logitech"),
                    buildRow(context, "จำนวนสินค้า", "x10"),
                    buildRow(context, "ราคา", "3200 ฿"),
                    buildRow(context, "Owner", "User TestSystem"),
                    buildRow(context, "อัพเดทล่าสุด", "19/6/2566 17:44:43"),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    "แก้ไขสินค้า",
                    onTap: () {
                      Get.toNamed("/edit_product");
                    },
                    fontSize: 14,
                    height: 50,
                    width: size.width * 0.4,
                  ),
                ],
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(context, title1, title2, {Color? color}) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoText(
            "$title1",
            color: color != null ? color : Colors.black87,
          ),
          SizedBox(
            width: size.width * 0.45,
            child: AutoText(
              "$title2",
              textAlign: TextAlign.right,
              color: color != null ? color : Colors.grey.shade600,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
