import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:packbuddy/widget/color/colors.dart';
import 'package:packbuddy/widget/modal_sheet/add_cart.dart';
import 'package:packbuddy/widget/text/auto_text.dart';

class ProductAddGridList extends StatelessWidget {
  const ProductAddGridList({super.key});

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
          return GestureDetector(
            onTap: () {
              addCart(context);
            },
            child: Container(
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
                      child: Container(
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
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12, top: 5, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoText(
                                "ปากกาลูกลื่น",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: secondColor,
                              ),
                              AutoText(
                                "100 ฿",
                                fontSize: 12,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: primaryColor,
                              size: 28,
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          );
        },
      ),
    );
  }
}
