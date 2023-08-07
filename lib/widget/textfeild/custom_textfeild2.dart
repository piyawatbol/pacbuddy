import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class CustomTextFeild2 extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final Function(String)? onChange;
  final TextInputType? keyboardTyppe;

  const CustomTextFeild2({required this.title, this.controller, this.onChange,this.keyboardTyppe});

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
          SizedBox(height: 8),
          TextField(
            keyboardType: keyboardTyppe,
            controller: controller,
            onChanged: onChange,
            style: GoogleFonts.kanit(),
            cursorColor: Colors.black,
            cursorHeight: 23,
            decoration: InputDecoration(
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 15),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
