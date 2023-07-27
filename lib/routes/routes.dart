import 'package:get/get.dart';
import 'package:packbuddy/screens/login/login_screen.dart';
import 'package:packbuddy/screens/tab/approve_order/approve_order_screen.dart';
import 'package:packbuddy/screens/tab/menu/search/order_detail_screen.dart';
import 'package:packbuddy/screens/tab/menu/search/search_order_screen.dart';
import 'package:packbuddy/screens/tab/product/product/add_product_screen.dart';
import 'package:packbuddy/screens/tab/product/product/product_detail_screen.dart';
import 'package:packbuddy/screens/tab/menu/ware_house/add_ware_house_screen.dart';
import 'package:packbuddy/screens/tab/menu/ware_house/add_ware_house_space_screen.dart';
import 'package:packbuddy/screens/tab/menu/ware_house/ware_hourse_screen.dart';
import 'package:packbuddy/screens/tab/menu/ware_house/ware_house_space_screen.dart';
import 'package:packbuddy/screens/tab/home/profile/edit_profile.dart';
import 'package:packbuddy/screens/tab/home/profile/profile_screen.dart';
import 'package:packbuddy/screens/tab/menu/add_order/add_order_screen.dart';
import 'package:packbuddy/screens/tab/menu/add_order/cart_screen.dart';
import 'package:packbuddy/screens/tab/menu/add_order/confirm_order_screen.dart';
import 'package:packbuddy/screens/tab/menu/add_order/customer_detail_screen.dart';
import 'package:packbuddy/screens/tab/menu/add_order/recipient_detail_screen.dart';
import 'package:packbuddy/screens/tab/menu/promotion/add_promotion_screen.dart';
import 'package:packbuddy/screens/tab/menu/promotion/choose_product_promotion.dart';
import 'package:packbuddy/screens/tab/menu/promotion/confirm_promotion_screen.dart';
import 'package:packbuddy/screens/tab/menu/promotion/promotion_screen.dart';
import 'package:packbuddy/screens/tab/menu/search/search_order_detail_screen.dart';
import 'package:packbuddy/screens/tab/menu/add_order/transport_detail_screen.dart';
import 'package:packbuddy/screens/tab/tab_screen.dart';

import '../screens/tab/product/product/edit_product.dart';

class AppRoutes {
  static final getPages = [
    GetPage(name: '/', page: () => LoginScreen()),
    GetPage(name: '/tab', page: () => TabScreen()),
    GetPage(name: '/order_detail', page: () => OrderDetailScreen()),
    GetPage(name: '/profile', page: () => ProfileScreen()),
    GetPage(name: '/edit_profile', page: () => EditProfileScreen()),
    GetPage(name: '/ware_house', page: () => WareHouseScreen()),
    GetPage(name: '/add_ware_house', page: () => AddWareHouseScreen()),
    GetPage(name: '/ware_house_space', page: () => WareHouseSpaceScreen()),
    GetPage(
        name: '/add_ware_house_space', page: () => AddWareHouseSpaceScreen()),
    GetPage(name: '/approve_order', page: () => ApproveOrderScreen()),
    GetPage(name: '/search_order', page: () => SearchOrderScreen()),
    GetPage(name: '/edit_product', page: () => EditProductScreen()),
    GetPage(name: '/product_detail', page: () => ProductDetailScreen()),
    GetPage(name: '/add_product', page: () => AddProductScreen()),
    GetPage(name: '/add_order', page: () => AddOrderScreen()),
    GetPage(name: '/cart', page: () => CartScreen()),
    GetPage(name: '/customer_detail', page: () => CustomerDetailScreen()),
    GetPage(name: '/recipient_detail', page: () => RecipientDetailScreen()),
    GetPage(name: '/transport_detail', page: () => TransportDetailScreen()),
    GetPage(
        name: '/search_order_detail', page: () => SearchOrderDetailScreen()),
    GetPage(name: '/promotion', page: () => PromotionScreen()),
    GetPage(name: '/add_promotion', page: () => AddPromotionScreen()),
    GetPage(
        name: '/choose_product_promotion',
        page: () => ChooseProductPromotionScreen()),
    GetPage(name: '/confirm_promotion', page: () => ConfirmPromotionScreen()),
    GetPage(name: '/confirm_order', page: () => ConfirmOrderScreen()),
  ];
}
