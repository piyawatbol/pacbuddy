import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/text/auto_text.dart';
import 'package:packbuddy/widget/textfeild/custom_textfeild.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: buildDrawer(),
      appBar: buildAppbar(),
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            buildProfile(),
          ],
        ),
      ),
    );
  }

  buildDrawer() {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              AutoText(
                "รายงาน",
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // AutoText(
                    //   "ฝ่ายบัญชี",
                    //   fontSize: 12,
                    // ),
                    // AutoText(
                    //   "ฝ่ายการตลาด",
                    //   fontSize: 12,
                    // ),
                    // AutoText(
                    //   "ค่าบริการ",
                    //   fontSize: 12,
                    // ),
                    // AutoText(
                    //   "สินค้า",
                    //   fontSize: 12,
                    // ),
                    // AutoText(
                    //   "คลังสินค้าขาย",
                    //   fontSize: 12,
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              AutoText(
                "ตั้งค่า",
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // AutoText(
                    //   "สิทธิ์ในการใช้งาน",
                    //   fontSize: 12,
                    // ),
                    // AutoText(
                    //   "เชื่อมต่อบริการ (API)",
                    //   fontSize: 12,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: AutoText(
        "Account",
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      elevation: 0,
    );
  }

  Widget buildBgProfile() {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.2,
      decoration: BoxDecoration(color: Colors.grey.shade100),
    );
  }

  Widget buildProfile() {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: EdgeInsets.only(top: 90, right: 20, left: 20, bottom: 20),
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0.2,
                blurRadius: 0.2,
                offset: Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.08),
                Column(
                  children: [
                    AutoText(
                      "Phayut Chanocha",
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: null,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1,
                          vertical: size.height * 0.013),
                      child: Divider(
                        height: 1,
                      ),
                    )
                  ],
                ),
                buildInfoProfile(),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
          child: CircleAvatar(
            radius: size.width * 0.13,
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildInfoProfile() {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.74,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextFeild(title: "Email"),
          CustomTextFeild(title: "เบอร์โทรศัพท์"),
          CustomButton("Profile",
              width: size.width * 0.4,
              height: size.height * 0.05,
              colorButton: Colors.grey.shade400, onTap: () {
            Get.toNamed('/edit_profile');
          }),
          SizedBox(height: 10),
          CustomButton("Logout",
              width: size.width * 0.4, height: size.height * 0.05, onTap: () {
            Get.toNamed('/login');
          }),
          SizedBox(height: 15)
        ],
      ),
    );
  }
}
