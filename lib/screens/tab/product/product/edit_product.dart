import 'package:flutter/material.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar("แก้ไขสินค้า"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20),
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
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextFeild(title: "รหัสสินค้า"),
                    CustomTextFeild(title: "ชื่อสินค้า"),
                    CustomTextFeild(title: "ประเภทสินค้า"),
                    CustomTextFeild(title: "ราคา"),
                    CustomTextFeild(title: "จำนวนสินค้า"),
                    CustomTextFeild(title: "Owner"),
                    CustomTextFeild(title: "สถานะสินค้า"),
                    CustomTextFeild(title: "อัพเดทล่าสุด"),
                  ],
                ),
              ),
              SizedBox(height: 30)
            ],
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
