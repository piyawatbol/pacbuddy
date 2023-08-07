// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:packbuddy/chart_example.dart';
import 'package:packbuddy/controller/home_controller.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/container/dashboard_box.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return Container(
              width: size.width,
              height: size.height,
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildDashBoardBox(),
                        AutoText(
                          "รายการ",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        LineChartSample2(),
                        SizedBox(height: 5),
                        buildTopsale(context, controller),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xfff9f9f9),
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: AutoText(
        "piyawat sakdadet",
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      elevation: 0,
      actions: [
        GestureDetector(
          onTap: () {
            Get.toNamed('/profile');
          },
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: SvgPicture.asset(
              'assets/icons/profile.svg',
              width: 35,
              height: 35,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDashBoardBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoText(
          "DashBoard",
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DashBoardBox(
              title: 'รายการวันนี้',
              subtitle: '5',
              unit: 'รายการ',
              color: secondColor,
              icon: Icons.calendar_today_rounded,
            ),
            DashBoardBox(
              title: 'ยอดวันนี้',
              subtitle: '2,200',
              unit: 'บาท',
              color: primaryColor,
              icon: Icons.calendar_view_month_sharp,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DashBoardBox(
              title: 'รายการเดือนนี้',
              subtitle: '120',
              unit: 'รายการ',
              color: secondColor,
              icon: Icons.calendar_today_rounded,
            ),
            DashBoardBox(
              title: 'ยอดเดือนนี้',
              subtitle: '123,000',
              unit: 'บาท',
              color: primaryColor,
              icon: Icons.calendar_view_month_sharp,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildTopsale(context, HomeController controller) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AutoText(
              "รายการขายดี",
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            buildDropdown(controller),
          ],
        ),
        AnimatedContainer(
          duration: Duration(seconds: 10),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(top: 15, left: 20, right: 20),
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(2, 2),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(children: [
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.openTopsaleAll.value ? 15 : 3,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            if (index < 9) ...{
                              Container(
                                width: 20,
                                child: AutoText(
                                  "0${index + 1}",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            } else ...{
                              Container(
                                width: 20,
                                child: AutoText(
                                  "${index + 1}",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            },
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoText(
                                  "ปากกาหมึกซึม",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                                AutoText(
                                  "5 บาท",
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ],
                        ),
                        AutoText(
                          "x100",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: GestureDetector(
                onTap: () {
                  controller.OnopenTopsaleAll();
                },
                child: controller.openTopsaleAll.value
                    ? Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      )
                    : Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                      ),
              ),
            )
          ]),
        ),
      ],
    );
  }

  Widget buildDropdown(HomeController controller) {
    return Container(
      padding: EdgeInsets.only(left: 13, right: 9),
      margin: EdgeInsets.only(left: 20),
      height: 40,
      child: DropdownButton<String>(
        value: controller.selectedValue.value,
        borderRadius: BorderRadius.circular(10),
        onChanged: (newValue) {
          controller.onSelectDropDown(newValue);
        },
        items: controller.dropdownItems.map((String item) {
          return DropdownMenuItem<String>(
            value: item.toString(),
            child: Container(
              width: 50,
              child: AutoText(
                item,
                color: Colors.black,
                fontSize: 12,
                minfontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }).toList(),
        icon: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Colors.black,
        ),
        underline: Container(
          height: 2,
        ),
      ),
    );
  }
}
