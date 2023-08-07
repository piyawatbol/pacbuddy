import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class DropdownAddress extends StatelessWidget {
  final String title;
  final List<String> itemList;
  final RxString selectedValue;

  DropdownAddress({
    required this.title,
    required this.itemList,
    required this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoText(
          title,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.only(left: 15, right: 10),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade100, width: 2),
          ),
          child: DropdownButton<String>(
            hint: itemList.isEmpty
                ? AutoText(
                    "กรุณากรอกรหัสไปรษณีย์",
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade500,
                  )
                : AutoText(
                    "เลือก",
                    fontSize: 12,
                    color: Colors.grey.shade500,
                  ),
            value: selectedValue.value.isNotEmpty ? selectedValue.value : null,
            borderRadius: BorderRadius.circular(10),
            onChanged: (newValue) {
              selectedValue.value = newValue!;
            },
            items: itemList.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Container(
                  width: double.infinity,
                  child: AutoText(
                    item,
                    color: Colors.black,
                    fontSize: 14,
                    minfontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
            icon: Center(
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black,
              ),
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
}
