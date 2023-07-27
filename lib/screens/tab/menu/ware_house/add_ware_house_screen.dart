import 'package:flutter/material.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';

class AddWareHouseScreen extends StatelessWidget {
  const AddWareHouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar("เพิ่มคลังสินค้า"),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
