import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar("ยืนยันการสร้างออเดอร์"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildProduct(context),
              buiildCustomerDetail(context),
              buildReviver(context),
              buildShipment(context),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: CustomButton(
                  "สร้างออเดอร์",
                  onTap: () {
                    Get.offAllNamed('/tab');
                  },
                  width: size.width * 0.85,
                  height: 50,
                  colorButton: primaryColor,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProduct(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25, bottom: 10, top: 20),
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
            color: secondColor,
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
                    // Get.toNamed("/product_detail");
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
        ],
      ),
    );
  }

  Widget buiildCustomerDetail(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25, bottom: 10),
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
            "รายละเอียดลูกค้า",
            color: secondColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 15,
          ),
          buildRow(context, "ชื่อผู้ซื้อ", "ประยุท จันอังคาร"),
          buildRow(context, "เบอร์โทรศัพท์", "09934534234"),
          buildRow(context, "อายุ", "18"),
          buildRow(context, "เพศ", "ชาย"),
          buildRow(context, "เลขประจำตัวผู้เสียภาษี", "1241242455"),
          buildRow(context, "ประเภทผู้เสียภาษี", "นิติบุคคล"),
          buildRow(context, "ชื่อบริษัท", "ABC Corporation"),
          buildRow(context, "ที่อยู่", "ลาดพร้าว 100 แยก 88 "),
          buildRow(context, "รหัสไปรษณีย์", "23424"),
          buildRow(context, "ตำบล", "บางกระปิ"),
          buildRow(context, "อำเภอ", "ลาดพร้าว"),
          buildRow(context, "จังหวัด", "กรุงเทพ"),
          buildRow(context, "ช่องทางการขาย", "facebook"),
          buildRow(context, "ชื่อ social media", "ประยุท จันอังคาร"),
          buildRow(context, "ช่องทางการชำระเงิน", "เงินสด"),
          buildRow(context, "หมายเหตุ", "ไม่มี"),
        ],
      ),
    );
  }

  Widget buildReviver(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25, bottom: 10),
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
            "ผู้รับสินค้า",
            color: secondColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 15,
          ),
          buildRow(context, "ชื่อผู้ซื้อ", "ประหยัด จันอังคาร"),
          buildRow(context, "เบอร์โทรศัพท์", "09934534234"),
          buildRow(context, "ที่อยู่", "ลาดพร้าว 100 แยก 88 "),
          buildRow(context, "รหัสไปรษณีย์", "23424"),
          buildRow(context, "ตำบล", "บางกระปิ"),
          buildRow(context, "อำเภอ", "ลาดพร้าว"),
          buildRow(context, "จังหวัด", "กรุงเทพ"),
        ],
      ),
    );
  }

  Widget buildShipment(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25, bottom: 10),
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
            "รายละเอียดการขนส่ง",
            color: secondColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 15,
          ),
          buildRow(context, "ตัวหนอนกันกระแทก", "0"),
          buildRow(context, "Bubble กันกระแทก", "0"),
          buildRow(context, "ช่องทางจัดส่ง", "J&T")
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

  Widget buildAlertDialog(context) {
    // var size = MediaQuery.of(context).size;
    return AlertDialog(
      contentTextStyle: GoogleFonts.kanit(color: Colors.black),
      titleTextStyle: GoogleFonts.kanit(color: Colors.black, fontSize: 20),
      title: Text("ยืนยันการสร้างออเดอร์"),
      content: Text("คุณการต้องการที่จะสร้างออเดอร์?"),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () {},
          child: Text("yes"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {},
          child: Text("no"),
        )
      ],
    );
  }

}


