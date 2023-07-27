import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:packbuddy/screens/tab/approve_order/approve_order_screen.dart';
import 'package:packbuddy/screens/tab/home/home_screen.dart';
import 'package:packbuddy/screens/tab/menu/menu_screen.dart';
import 'package:packbuddy/screens/tab/product/product_screen.dart';
// import 'package:packbuddy/screens/tab/purchase_order/purchase_order_screen.dart';
import 'package:packbuddy/widget/color/colors.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  var _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    MenuScreen(),
    ProductScreen(),
    ApproveOrderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ));
    } else if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ));
    }
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey.shade200,
        selectedFontSize: 0,
        iconSize: 30,
        elevation: 0,
        unselectedFontSize: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              colorFilter:
                  ColorFilter.mode(Colors.grey.shade200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/home.svg",
              colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/menu_grid.svg",
              colorFilter:
                  ColorFilter.mode(Colors.grey.shade200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/menu_grid.svg",
              colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
            ),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/product.svg",
              colorFilter:
                  ColorFilter.mode(Colors.grey.shade200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/product.svg",
              colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
            ),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/check.svg",
              colorFilter:
                  ColorFilter.mode(Colors.grey.shade200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/check.svg",
              colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
            ),
            label: 'Page 5',
          ),
        ],
      ),
    );
  }
}
