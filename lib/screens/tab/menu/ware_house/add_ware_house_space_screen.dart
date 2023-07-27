import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/warehouse_controller.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/modal_sheet/button_sheeet_search.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild.dart';

class AddWareHouseSpaceScreen extends StatelessWidget {
  const AddWareHouseSpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar("เพิ่มพื้นที่คลัง"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GetBuilder<WareHouseController>(
                init: WareHouseController(),
                builder: (controller) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                            AutoText(
                              "รายละเอียด",
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoText("คลัง"),
                                  SizedBox(height: 5),
                                  buildTextBox("กรุณาเลือก", context),
                                  SizedBox(height: 15),
                                  CustomTextFeild(
                                    title: "ชื่อคลัง",
                                    enable: true,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              )),
        ),
      ),
    );
  }

  buildTextBox(String? text, context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            showCustomBottomSheetSearch(context);
          },
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade100,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoText(
                    "กรุณาเลือก",
                    color: Colors.grey.shade500,
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              )),
        )
      ],
    );
  }
}
