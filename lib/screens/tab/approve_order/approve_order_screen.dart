import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/image/big_image.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class ApproveOrderScreen extends StatelessWidget {
  const ApproveOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9f9f9),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: AutoText(
          "การอนุมัติ",
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        elevation: 0,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [buildListApprove(context)],
          ),
        ),
      ),
    );
  }

  Widget buildListApprove(context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoText(
                            "USE202306-00006",
                            fontSize: 14,
                          ),
                          Row(
                            children: [
                              AutoText(
                                "14/6/2566 18:57:04",
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey.shade400,
                                size: 18,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                () => BigImage(
                                  imageUrl: "assets/images/slip.jpg",
                                ),
                                transition: Transition.native,
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/slip.jpg"),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoText(
                                    "ชื่อสินค้า : betagen",
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Row(
                                    children: [
                                      AutoText("วิธีการชำระเงิน"),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width: 40,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: AutoText(
                                            "โอน",
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoText(
                                        "จำนวน x3",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      AutoText(
                                        "รวม 25 ฿",
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: AutoText(
                                "ปฎิเสธ",
                                fontSize: 14,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Flexible(
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: AutoText(
                                "ตกลง",
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildListOrder(context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // controler.onShow(true);
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return buildAlertDialog(context);
                },
              );
            },
            child: Container(
              // margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(0, 2),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoText(
                        "USE202306-00006",
                        fontSize: 14,
                      ),
                      AutoText(
                        "14/6/2566 18:57:04",
                        color: Colors.grey,
                        fontSize: 14,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoText("ชื่อสินค้า : betagen"),
                      AutoText(
                        "จำนวน x3",
                        fontSize: 14,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoText(
                        "วิธีการชำระเงิน : Cash",
                        fontSize: 14,
                      ),
                      AutoText(
                        "รวม 25 ฿",
                        color: Colors.green,
                        fontSize: 14,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildAlertDialog(context) {
    var size = MediaQuery.of(context).size;
    return AlertDialog(
      contentTextStyle: GoogleFonts.kanit(),
      titleTextStyle: GoogleFonts.kanit(color: Colors.black, fontSize: 20),
      title: Text("รายละเอียด"),
      content: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          width: size.width * 0.75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoText(
                    "เลขที่ใบสั่งซื้อ",
                  ),
                  AutoText(
                    "USE202306-00006",
                    color: Colors.grey.shade600,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoText("วันที่สร้าง"),
                  AutoText(
                    "14/6/2566 18:57:04",
                    color: Colors.grey.shade600,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoText("ชื่อสินค้า"),
                  AutoText(
                    "betagen",
                    color: Colors.grey.shade600,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoText("จำนวน"),
                  AutoText(
                    "2 ชิ้น",
                    color: Colors.grey.shade600,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoText("วิธีการชำระเงิน"),
                  AutoText(
                    "Bank Transfer ( Kbank )",
                    color: Colors.grey.shade600,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoText(
                      "หลักฐานการชำระเงิน",
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    () => BigImage(
                      imageUrl: "assets/images/slip.jpg",
                    ),
                    transition: Transition.native,
                  );
                },
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/slip.jpg"))),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed("/order_detail");
                  },
                  child: AutoText("ดูรายละเอียดเพิ่มเติม", color: Colors.blue),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    "ยืนยัน",
                    width: size.width * 0.3,
                    onTap: () {
                      // controller.onShow(false);
                      Get.back();
                    },
                    colorButton: primaryColor,
                    fontSize: 16,
                  ),
                  CustomButton(
                    "ยกเลิก",
                    width: size.width * 0.3,
                    onTap: () {
                      // controller.onShow(false);
                      Get.back();
                    },
                    foregroundColor: Colors.black,
                    colorText: primaryColor,
                    fontSize: 16,
                    colorButton: Colors.white,
                    borderSide: BorderSide(color: primaryColor, width: 3),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
