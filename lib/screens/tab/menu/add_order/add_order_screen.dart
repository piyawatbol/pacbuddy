import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/cart_button.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/list/product_grid_list.dart';
import 'package:packbuddy/widget/modal_sheet/buttom_sheet_add_order.dart';

class AddOrderScreen extends StatelessWidget {
  const AddOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        "เพิ่มออเดอร์",
        iconButton: CartButton(),
        iconButton2: GestureDetector(
          onTap: () {
            showCustomBottomSheetAddorder(context);
          },
          child: Icon(Icons.filter_alt_outlined),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ProductGridList(),
                  SizedBox(
                    height: size.height * 0.12,
                  )
                ],
              ),
            ),
            buildBottom()
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
              Get.toNamed('customer_detail');
            },
            height: 45,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
