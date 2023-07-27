import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/login_controller.dart';
import 'package:packbuddy/widget/button/custom_button.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ));
    } else if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ));
    }
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return Container(
              width: size.width,
              height: size.height,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.12),
                        buildLogo(context),
                        SizedBox(height: size.height * 0.08),
                        buildTextFeild("ชื่อผู้ใช้", "กรอกชื่อผู้ใช้งาน",
                            controller, controller.focusNode1),
                        SizedBox(height: 15),
                        buildTextFeild("รหัสผ่าน", "กรอกรหัสผ่าน", controller,
                            controller.focusNode2),
                        buildCheckboxAndForget(controller),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 50),
                          child: CustomButton(
                            "Login",
                            width: size.width,
                            colorButton: secondColor,
                            height: 45,
                            onTap: () {
                              Get.offAllNamed('/tab');
                            },
                          ),
                        ),
                        AutoText(
                          "-------------  or login with  --------------",
                          color: secondColor,
                          fontSize: 16,
                        ),
                        buildSocial(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoText(
                              "Don't have an account? ",
                              color: secondColor,
                            ),
                            AutoText(
                              "Register",
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildLogo(context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * 0.6,
          child: Image.asset("assets/images/login_logo.png"),
        ),
      ],
    );
  }

  Widget buildTextFeild(
      String? title, String? hintTxt, LoginController controller, focusNode) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoText(
          "$title",
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(height: 8),
        TextFormField(
          focusNode: focusNode,
          obscureText: title == "รหัสผ่าน"
              ? controller.hidePass == true
                  ? true
                  : false
              : false,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: "$hintTxt",
            hintStyle: TextStyle(fontSize: 13),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
            suffixIcon: title == "รหัสผ่าน"
                ? IconButton(
                    onPressed: () {
                      controller.onHidePassword();
                    },
                    icon: controller.hidePass == true
                        ? Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.visibility,
                            color: Colors.black,
                          ),
                  )
                : null,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                width: 2,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                width: 2,
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildCheckboxAndForget(LoginController controller) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                child: Checkbox(
                  value: controller.rememberPass.value,
                  activeColor: secondColor,
                  fillColor: MaterialStateProperty.all(secondColor),
                  checkColor: Colors.white,
                  onChanged: (bool? value) {
                    controller.onRememberPass();
                  },
                ),
              ),
              SizedBox(width: 10),
              AutoText(
                "remember password",
                color: secondColor,
                fontSize: 14,
              ),
            ],
          ),
          AutoText(
            "forget password ?",
            color: secondColor,
            fontSize: 14,
          ),
        ],
      ),
    );
  }

  Widget buildSocial() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/facebook.png"),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/google.png"),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/line.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
