import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/image/big_image.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar("รายละเอียดออเดอร์"),
      body: Container(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildDetailSell(context),
                buildProduct(context),
                buildShipment(context),
                buildPayment(context),
                SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDetailSell(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(8),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoText(
                "รายละเอียดการขาย",
                fontSize: 14,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              AutoText(
                "จัดส่งสำเร็จ",
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(height: 12),
          buildRow(context, "เลขที่ใบสั่งซื้อ", "PBD202306"),
          buildRow(context, "วันที่", "12/6/2566 16:49:12"),
          buildRow(context, "ตัวแทนจำหน่าย", "IT Monkmat User TestSystem"),
          buildRow(context, "ผู้สร้างรายการ", "ISuperAdmin Main"),
          buildRow(context, "ชื่อลูกค้า", "ทดสอบหนึ่ง ทดสอบ"),
          buildRow(context, "เบอร์โทรศัพท์ลูกค้า", "1111111111"),
          buildRow(context, "ที่อยู่ลูกค้า",
              "11/11 บางคูรัด บางบัวทอง นนทบุรี 11110"),
        ],
      ),
    );
  }

  Widget buildProduct(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(8),
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
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 10),
              shrinkWrap: true,
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed("/product_detail");
                  },
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
                          "5 ฿",
                          fontSize: 12,
                        ),
                        AutoText(
                          "x12",
                          fontSize: 12,
                        ),
                        AutoText(
                          "60 ฿",
                          fontSize: 12,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          buildRow(context, 'ยอดรวม', "120 ฿"),
          buildRow(context, 'ส่วนลดสินค้า', "0 ฿"),
          buildRow(context, 'ส่วนท้ายบิล', "0 ฿"),
          buildRow(context, 'Vat ( 7 % )', "12 ฿"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoText("ยอดชำระเงิน"),
              AutoText(
                "200 ฿",
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildShipment(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(8),
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
            "ข้อมูลการจัดส่งสินค้า",
            fontSize: 14,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          buildRow(context, "ชื่อผู้รับสินค้า", "ทดสอบหนึ่ง ทดสอบ"),
          buildRow(context, "เบอร์โทรศัพท์", "1111111111"),
          buildRow(context, "วันที่จัดส่ง",
              "11/11 บางคูรัด บางบัวทอง นนทบุรี 11110"),
          buildRow(context, "จัดส่งโดย", "SPX"),
          buildRow(context, "ขนาดกล่อง", "10"),
          buildRow(context, "น้ำหนัก", "200 g"),
        ],
      ),
    );
  }

  Widget buildPayment(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(8),
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
            "การชำระเงิน",
            fontSize: 14,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          buildRow(context, 'วิธีการชำระเงิน', "Cash"),
          buildRow(context, 'ธนาคารที่รับชำระเงิน', "กรุงไทย"),
          buildRow(context, 'สถานะการชำระเงิน', "เรียบร้อย"),
          buildRow(context, 'วัน/เวลา ที่ชำระเงิน', "12/6/2566 16:48:00"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoText("หลักฐานการชำระเงิน", fontWeight: FontWeight.bold),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(
                  () => BigImage(
                        imageUrl: "assets/images/slip.jpg",
                      ),
                  transition: Transition.native);
            },
            child: Hero(
              tag: "2",
              child: Container(
                height: size.height * 0.42,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/slip.jpg"),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }

  Widget buildRow(context, title1, title2, {Color? color}) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoText(
            "$title1",
            color: color != null ? color : Colors.black87,
          ),
          SizedBox(
            width: size.width * 0.45,
            child: AutoText(
              "$title2",
              textAlign: TextAlign.right,
              color: color != null ? color : Colors.grey.shade600,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
