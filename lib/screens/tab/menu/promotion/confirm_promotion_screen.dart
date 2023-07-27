import 'package:flutter/material.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild.dart';

class ConfirmPromotionScreen extends StatelessWidget {
  const ConfirmPromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar("ยืนยันการสร้างโปรโมชั่น"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildinfo(context),
              buildProduct(context),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: CustomButton("สร้างโปรโมรชั่น", onTap: () {}),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildinfo(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            width: size.width,
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5)),
          ),
          CustomTextFeild(title: "ชื่อโปรโมรชั่น")
        ],
      ),
    );
  }

  Widget buildProduct(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
            "สินค้า",
            fontSize: 14,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          SizedBox(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 10),
              shrinkWrap: true,
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/pen.png"),
                            ),
                          ),
                        ),
                        AutoText(
                          "ปากกาลูกลื่น",
                          fontSize: 12,
                        ),
                        AutoText(
                          "x3",
                          fontSize: 12,
                        ),
                        AutoText(
                          "-10 ฿",
                          fontSize: 12,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
