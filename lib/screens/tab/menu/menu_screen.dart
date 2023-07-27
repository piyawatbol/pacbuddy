import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/menu_grid_controller.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0,
        title: AutoText(
          "เมนู",
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        centerTitle: false,
      ),
      body: Container(
        width: size.height,
        height: size.height,
        child: SingleChildScrollView(
            child: GetBuilder(
          init: MenuGridController(),
          builder: (controller) {
            return Column(
              children: [
                buildGridList(controller),
              ],
            );
          },
        )),
      ),
    );
  }

  Widget buildGridList(MenuGridController controller) {
    return SizedBox(
      child: GridView.builder(
        padding: EdgeInsets.only(left: 25, right: 25, top: 20),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.1,
        ),
        itemCount: controller.menu.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed('/purchase_order');
            },
            child: GestureDetector(
              onTap: () {
                Get.toNamed('${controller.menu[index].route}');
              },
              child: Container(
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/${controller.menu[index].icon}',
                      colorFilter:
                          ColorFilter.mode(primaryColor, BlendMode.srcIn),
                    ),
                    SizedBox(height: 12),
                    AutoText(
                      "${controller.menu[index].title}",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
