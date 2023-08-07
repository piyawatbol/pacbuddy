// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/order/add_order_controller.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/cart_button.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/dropdown/dropdown_address.dart';
import 'package:packbuddy/widget/dropdown/dropdown_phone_input.dart';
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
          appBar: BackAppBar(
            "ผู้รับสินค้า",
            iconButton: CartButton(),
          ),
          body: GetBuilder<AddOrderController>(
            init: AddOrderController(),
            builder: (controller) {
              return Container(
                width: size.width,
                height: size.height,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Switch(
                                value: true,
                                onChanged: (v) {},
                                activeColor: primaryColor,
                              ),
                              SizedBox(width: 10),
                              AutoText("สถานที่เดียวกับที่อยู่ลูกค้า",
                                  fontSize: 14)
                            ],
                          ),
                        ),
                        CustomTextFeild2(
                          title: "ชื่อผู้ซื้อ",
                        ),
                        CustomTextFeild2(
                          title: "นามสกุล",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: DropdownPhoneInput(
                            itemList: controller.phoneList2,
                            selectedValue: controller.selectPhone2,
                          ),
                        ),
                        CustomTextFeild2(
                            title: "รหัสไปรษณีย์",
                            controller: controller.zipcode2,
                            onChange: (v) {
                              if (controller.zipcode2.text.length == 5) {
                                controller.getLocationByPostalCode2(
                                    int.parse(controller.zipcode2.text));
                              } else {
                                controller.ClearPostData2();
                              }
                            }),
                        DropdownAddress(
                          title: "ตำบล",
                          itemList: controller.subDistrictList2,
                          selectedValue: controller.selectSubDistrict2,
                        ),
                        DropdownAddress(
                          title: "อำเภอ",
                          itemList: controller.districtList2,
                          selectedValue: controller.selectDistrict2,
                        ),
                        DropdownAddress(
                          title: "จังหวัด",
                          itemList: controller.provinceList2,
                          selectedValue: controller.selectProvince2,
                        ),
                        CustomTextFeild2(
                          title: "ที่อยู่",
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
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
