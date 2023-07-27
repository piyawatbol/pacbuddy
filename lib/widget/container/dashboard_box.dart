import 'package:flutter/material.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class DashBoardBox extends StatelessWidget {
  final Color? color;
  final String? title;
  final String? subtitle;
  final String? unit;
  final IconData? icon;
  const DashBoardBox({
    required this.color,
    required this.icon,
    required this.subtitle,
    required this.unit,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Flexible(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 15, left: 10, right: 10),
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
        child: Row(
          children: [
            Container(
              width: 5,
              height: size.height * 0.115,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoText(
                  "$title",
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                AutoText(
                  "$subtitle",
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                AutoText(
                  "$unit",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
