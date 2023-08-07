import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild2.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar("แก้ไขสินค้า"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: size.height * 0.32,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: SvgPicture.asset(
                    'assets/icons/image.svg',
                    width: 50,
                    height: 50,
                    colorFilter:
                        ColorFilter.mode(Colors.grey.shade300, BlendMode.srcIn),
                  )),
                ),
                SizedBox(height: 10),
                CustomTextFeild2(title: "รหัสสินค้า"),
                CustomTextFeild2(title: "ชื่อสินค้า"),
                CustomTextFeild2(title: "ประเภทสินค้า"),
                CustomTextFeild2(title: "ราคา"),
                CustomTextFeild2(title: "จำนวนสินค้า"),
                CustomTextFeild2(title: "Owner"),
                CustomTextFeild2(title: "สถานะสินค้า"),
                CustomTextFeild2(title: "อัพเดทล่าสุด"),
                SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildTextBox(String? text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoText(
            "$text",
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(2, 2),
                  blurRadius: 2,
                  spreadRadius: 0.1,
                ),
              ],
            ),
            child: TextField(
              cursorColor: Colors.black,
              cursorHeight: 20,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
