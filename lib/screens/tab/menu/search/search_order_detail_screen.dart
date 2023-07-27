import 'package:flutter/material.dart';
import 'package:packbuddy/widget/appbar/back_appbar.dart';
import 'package:packbuddy/widget/list/order_list.dart';

class SearchOrderDetailScreen extends StatelessWidget {
  const SearchOrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar("รายการออเดอร์"),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            OrderList(),
          ],
        ),
      ),
    );
  }
}
