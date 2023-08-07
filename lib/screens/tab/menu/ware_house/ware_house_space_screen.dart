import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/controller/warehouse_controller.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class WareHouseSpaceScreen extends StatelessWidget {
  const WareHouseSpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<WareHouseController>(
      init: WareHouseController(),
      builder: (controller) {
        return Scaffold(
          appBar: buildAppBar(controller),
          body: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        padding: EdgeInsets.symmetric(vertical: 10),
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
                        child: ListTile(
                          title: AutoText("ชื่อคลัง : คลัง2"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AutoText(
                                '8/949 กลางแดด นครสวรรค์ 60000',
                                fontSize: 12,
                              ),
                              AutoText(
                                "พื้นที่จัดเก็บ : Zone 2",
                                fontSize: 12,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  buildAppBar(WareHouseController controller) {
    return controller.search2.value
        ? AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.white,
            title: TextField(
              decoration:
                  InputDecoration(hintText: "search", border: InputBorder.none),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                    onTap: () {
                      controller.onSearchSwitch2();
                    },
                    child: Icon(Icons.close_outlined)),
              )
            ],
          )
        : BackAppBar(
            "พื้นที่คลังสินค้า",
            iconButton2: GestureDetector(
                onTap: () {
                  controller.onSearchSwitch2();
                },
                child: Icon(Icons.search)),
            iconButton: Padding(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/add_ware_house_space");
                },
                child: Icon(Icons.add),
              ),
            ),
          );
  }
}
