// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packbuddy/controller/order/add_order_controller.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/cart_button.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/dropdown/dropdown_address.dart';
import 'package:packbuddy/widget/dropdown/dropdown_phone_input.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild2.dart';

class CustomerDetailScreen extends StatelessWidget {
  CustomerDetailScreen({super.key});

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: BackAppBar(
          "รายละเอียดลูกค้า",
          iconButton: CartButton(),
        ),
        body: Container(
            width: size.width,
            height: size.height,
            child: GetBuilder<AddOrderController>(
              init: AddOrderController(),
              builder: (controller) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        CustomTextFeild2(
                          title: "เลขประจำตัวผู้เสียภาษี",
                        ),
                        buildTypeTexPayer(controller),
                        if (controller.type_taxpayer == 'นิติบุคคล')
                          CustomTextFeild2(
                            title: "ชื่อบริษัท",
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
                            itemList: controller.phoneList1,
                            selectedValue: controller.selectPhone1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              buildAgeBox(),
                              SizedBox(width: 5),
                              buildDropdownSex(controller),
                            ],
                          ),
                        ),
                        CustomTextFeild2(
                          title: "รหัสไปรษณีย์",
                          controller: controller.zipcode1,
                          onChange: (v) {
                            if (controller.zipcode1.text.length == 5) {
                              controller.getLocationByPostalCode1(
                                  int.parse(controller.zipcode1.text));
                            } else {
                              controller.ClearPostData1();
                            }
                          },
                        ),
                        DropdownAddress(
                          title: "ตำบล",
                          itemList: controller.subDistrictList1,
                          selectedValue: controller.selectSubDistrict1,
                        ),
                        DropdownAddress(
                          title: "อำเภอ",
                          itemList: controller.districtList1,
                          selectedValue: controller.selectDistrict1,
                        ),
                        DropdownAddress(
                          title: "จังหวัด",
                          itemList: controller.provinceList1,
                          selectedValue: controller.selectProvince1,
                        ),
                        CustomTextFeild2(
                          title: "ที่อยู่",
                        ),
                        CustomTextFeild2(
                          title: "ช่องทางการขาย",
                        ),
                        CustomTextFeild2(
                          title: "ชื่อ social media",
                        ),
                        CustomTextFeild2(
                          title: "ช่องทางการชำระเงิน",
                        ),
                        CustomTextFeild2(
                          title: "หมายเหตุ",
                        ),
                        CustomButton(
                          "ถัดไป",
                          onTap: () {
                            Get.toNamed('/recipient_detail');
                          },
                          width: size.width * 0.9,
                          height: 45,
                          fontSize: 14,
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }

  Widget buildAgeBox() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoText(
            "อายุ",
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            child: TextField(
              style: GoogleFonts.kanit(),
              cursorColor: Colors.black,
              cursorHeight: 23,
              decoration: InputDecoration(
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 15),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDropdownSex(AddOrderController controller) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoText(
            "เพศ",
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade100, width: 2)),
            child: DropdownButton<String>(
              hint: AutoText(
                "เลือก",
                fontSize: 12,
                color: Colors.grey.shade500,
              ),
              value: controller.selectSex.isEmpty
                  ? null
                  : controller.selectSex.value,
              borderRadius: BorderRadius.circular(10),
              onChanged: (newValue) {
                controller.onSelectSex(newValue);
              },
              items: controller.sexList.map((String item) {
                return DropdownMenuItem<String>(
                  value: item.toString(),
                  child: Container(
                    width: 60,
                    child: AutoText(
                      item,
                      color: Colors.black,
                      fontSize: 12,
                      minfontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }).toList(),
              icon: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black,
              ),
              isExpanded: true,
              underline: Container(
                height: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTypeTexPayer(AddOrderController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoText("ประเภทผู้เสียภาษี"),
        SizedBox(width: 10),
        Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  controller.onSelectTypetexpayer("บุคคล");
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: controller.type_taxpayer == "บุคคล"
                        ? primaryColor
                        : Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.5,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
              AutoText(
                "บุคคล",
                fontSize: 14,
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  controller.onSelectTypetexpayer("นิติบุคคล");
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: controller.type_taxpayer == "นิติบุคคล"
                        ? primaryColor
                        : Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.5,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
              AutoText(
                "นิติบุคคล",
                fontSize: 14,
              )
            ],
          ),
        ),
      ],
    );
  }
}
