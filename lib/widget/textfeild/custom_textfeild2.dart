import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class CustomTextFeild2 extends StatelessWidget {
  final String? title;

  const CustomTextFeild2({required this.title});

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
          SizedBox(height: 5),
          TextField(
            style: GoogleFonts.kanit(),
            cursorColor: Colors.black,
            cursorHeight: 20,
            decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.1),
              contentPadding: EdgeInsets.only(left: 15),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey.shade200, width: 1.2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
