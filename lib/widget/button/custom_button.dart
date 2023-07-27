import 'package:flutter/material.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final double? width;
  final double? height;
  final double? fontSize;
  final VoidCallback? onTap;
  final Color? colorButton;
  final Color? colorText;
  final double? borderRadius;
  final BorderSide? borderSide;
  final Color? foregroundColor;
  const CustomButton(this.text,
      {this.colorButton = primaryColor,
      this.colorText = Colors.white,
      this.foregroundColor = Colors.white,
      this.width,
      this.height,
      required this.onTap,
      this.borderRadius = 30,
      this.fontSize = 16,
      this.borderSide});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          side: borderSide,
          backgroundColor: colorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                borderRadius!), // Set the desired border radius
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        onPressed: onTap,
        child: AutoText(
          '$text',
          fontSize: fontSize,
          color: colorText,
        ),
      ),
    );
  }
}
