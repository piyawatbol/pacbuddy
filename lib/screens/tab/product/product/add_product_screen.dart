import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/modal_sheet/button_sheet_pickimage.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild2.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: BackAppBar("เพิ่มสินค้า"),
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
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
                      GestureDetector(
                        onTap: () {
                          showCustomBottomSheetPickImage(context);
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                          height: size.height * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(0, 0),
                                blurRadius: 1,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(Icons.photo),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      CustomTextFeild2(title: "รหัสสินค้า"),
                      CustomTextFeild2(title: "ชื่อสินค้า"),
                      CustomTextFeild2(title: "ประเภทสินค้า"),
                      CustomTextFeild2(title: "ราคา"),
                      CustomTextFeild2(title: "จำนวนสินค้า"),
                      CustomTextFeild2(title: "Owner"),
                      CustomTextFeild2(title: "สถานะสินค้า"),
                      CustomTextFeild2(title: "อัพเดทล่าสุด"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            "เพิ่มสินค้า",
                            onTap: () {
                              Get.back();
                            },
                            width: size.width * 0.3,
                            height: 45,
                            fontSize: 14,
                          ),
                        ],
                      ),
                      SizedBox(height: 10)
                    ],
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
