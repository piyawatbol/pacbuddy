import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/cart");
      },
      child: Padding(
        padding: EdgeInsets.only(right: 12, left: 10),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Icon(Icons.shopping_cart_rounded),
            Positioned(
              bottom: 7,
              right: -5,
              child: CircleAvatar(
                radius: 9,
                backgroundColor: Colors.red,
                child: AutoText(
                  "99",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 8,
                  minfontSize: 8,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
