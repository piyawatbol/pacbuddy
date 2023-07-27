import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild.dart';

class SearchOrderScreen extends StatelessWidget {
  const SearchOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: BackAppBar("ค้นหาออเดอร์"),
        body: Container(
          width: size.width,
          height: size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.2),
                CustomTextFeild(
                  title: "เบอร์โทรศัพท์",
                  enable: true,
                ),
                CustomButton(
                  "ค้นหา",
                  onTap: () {
                    Get.toNamed('/search_order_detail');
                  },
                  width: size.width * 0.3,
                  fontSize: 14,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
