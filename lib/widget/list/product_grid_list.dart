import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class ProductGridList extends StatelessWidget {
  const ProductGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        padding: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 20),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemCount: 30,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.07),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/image.svg',
                              width: 50,
                              height: 50,
                              colorFilter: ColorFilter.mode(
                                  Colors.grey.shade300, BlendMode.srcIn),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 0,
                          child: Container(
                            width: 70,
                            height: 20,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: AutoText(
                                "ใช้งาน",
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoText(
                              "ปากกาลูกลื่น",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            AutoText(
                              "100 ฿",
                              fontSize: 12,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                        // TextButton(
                        //   onPressed: () {},
                        //   style: TextButton.styleFrom(
                        //     foregroundColor: Colors.white,
                        //     backgroundColor: primaryColor,
                        //     padding: EdgeInsets.symmetric(
                        //         horizontal: 22, vertical: 8),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //   ),
                        //   child: Text('เลือก'),
                        // ),
                      ],
                    ),
                  )
                ]),
          );
        },
      ),
    );
  }
}
