import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/order/add_order_controller.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/cart_button.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

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
        appBar: BackAppBar(
          "รายละเอียดการขนส่ง",
          iconButton: CartButton(),
        ),
        body: Container(
            width: size.width,
            height: size.height,
            child: GetBuilder<AddOrderController>(
              init: AddOrderController(),
              builder: (controller) {
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            CustomTextFeild2(
                              title: "ตัวหนอนกันกระแทก",
                              keyboardTyppe: TextInputType.number,
                            ),
                            CustomTextFeild2(
                              title: "Bubble กันกระแทก",
                              keyboardTyppe: TextInputType.number,
                            ),
                            buildDropdownPaymentMethod(controller),
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
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
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
                );
              },
            )),
      ),
    );
  }

  Widget buildDropdownPaymentMethod(AddOrderController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoText(
          "วิธีการชำระเงิน",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.only(left: 15, right: 10),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.shade100,
              width: 2,
            ),
          ),
          child: DropdownButton<String>(
            hint: AutoText(
              "เลือก",
              fontSize: 12,
              color: Colors.grey.shade400,
            ),
            value: controller.selectPayment.isEmpty
                ? null
                : controller.selectPayment.value,
            borderRadius: BorderRadius.circular(10),
            onChanged: (newValue) {
              controller.onSelectPayment(newValue);
            },
            items: controller.paymentMethodList.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Container(
                  width: double.infinity,
                  child: AutoText(
                    item,
                    color: Colors.black,
                    fontSize: 14,
                    minfontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
            icon: Center(
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black,
              ),
            ),
            isExpanded: true,
            underline: Container(),
          ),
        ),
      ],
    );
  }
}
