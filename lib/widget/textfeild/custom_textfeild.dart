import 'package:flutter/material.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class CustomTextFeild extends StatelessWidget {
  final String? title;
  final bool? enable;

  const CustomTextFeild({
    required this.title,
    this.enable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoText(
            "$title",
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(1, 1),
                  blurRadius: 5,
                  spreadRadius: 0.1,
                ),
              ],
            ),
            child: Center(
              child: TextField(
                enabled: enable,
                cursorColor: Colors.black,
                cursorHeight: 20,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
