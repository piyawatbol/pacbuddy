import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/product_controller.dart';
import 'package:packbuddy/widget/list/product_grid_list.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9f9f9),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: AutoText(
          "สินค้า",
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        elevation: 0,
        actions: [],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
            child: GetBuilder<ProductController>(
          init: ProductController(),
          builder: (controller) {
            return Column(
              children: [ProductGridList()],
            );
          },
        )),
      ),
    );
  }

  Widget buildListProduct(context, ProductController controller) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.productList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed("/product_detail");
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(2, 2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      // child: Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         AutoText(
                      //           "${controller.productList[index].id}",
                      //           fontSize: 14,
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      //       ],
                      //     ),
                      //     Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         AutoText(
                      //           "${controller.productList[index].product_name}",
                      //           fontSize: 14,
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      //         AutoText(
                      //           "x${controller.productList[index].amount}",
                      //           fontSize: 14,
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      //       ],
                      //     ),
                      //     Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         AutoText(
                      //           "${controller.productList[index].price} ฿",
                      //           fontSize: 14,
                      //           fontWeight: FontWeight.w500,
                      //           color: Colors.black,
                      //         )
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 6,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
