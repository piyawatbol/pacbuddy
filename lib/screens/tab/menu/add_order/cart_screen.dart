import 'package:flutter/material.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar("ตะกร้า"),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildListCart(context),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoText(
                      "รวม",
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    AutoText(
                      "1000 ฿",
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildListCart(context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 0),
                  blurRadius: 1,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoText("ปากกาลูกลื่น", fontSize: 12),
                        AutoText(
                          "10 ฿",
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey.shade100,
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: AutoText("2"),
                    ),
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey.shade100,
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 14,
                        ))
                  ],
                ),
                AutoText(
                  "100 ฿",
                  fontSize: 12,
                ),
                Icon(
                  Icons.delete_forever_sharp,
                  color: Colors.red,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
