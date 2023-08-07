import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class DropdownPhoneInput extends StatelessWidget {
  final List<String> itemList;
  final RxString selectedValue;
  DropdownPhoneInput({required this.itemList, required this.selectedValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildDropdownPhone(),
        SizedBox(width: 5),
        buildPhoneBox(),
      ],
    );
  }

  Widget buildDropdownPhone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoText(
          "เบอร์โทรศัพท์",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 10),
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade100, width: 2)),
          child: DropdownButton<String>(
            hint: AutoText(
              "เลือก",
              fontSize: 12,
              color: Colors.grey.shade500,
            ),
            value: itemList.isEmpty ? null : selectedValue.value,
            borderRadius: BorderRadius.circular(10),
            onChanged: (newValue) {
              selectedValue.value = newValue!;
            },
            items: itemList.map((String item) {
              return DropdownMenuItem<String>(
                value: item.toString(),
                child: Container(
                  width: 60,
                  child: AutoText(
                    item,
                    color: Colors.black,
                    fontSize: 12,
                    minfontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
            icon: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
            ),
            isExpanded: true,
            underline: Container(
              height: 2,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPhoneBox() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoText(
            "",
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            child: TextField(
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
          ),
        ],
      ),
    );
  }
}
