import 'package:flutter/material.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? text;
  final Widget? iconButton;
  final Widget? iconButton2;
  BackAppBar(this.text, {this.iconButton = null, this.iconButton2});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xfff9f9f9),
      iconTheme: IconThemeData(color: Colors.black),
      title: AutoText(
        "$text",
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      centerTitle: true,
      elevation: 0,
      actions: [
        iconButton2 == null ? SizedBox() : iconButton2!,
        iconButton == null ? SizedBox() : iconButton!
      ],
    );
  }
}
