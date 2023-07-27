import 'package:get/get.dart';
import 'package:packbuddy/model/menu_model.dart';

class MenuGridController extends GetxController {
  List<MenuModel> menu = [
    MenuModel(
      title: "ค้นหาออเดอร์",
      icon: "search_order.svg",
      route: "/search_order",
    ),
    MenuModel(
      title: "เพิ่มออเดอร์",
      icon: "add_order.svg",
      route: "/add_order",
    ),
    MenuModel(
      title: "โปรโมชั่น",
      icon: "promotion.svg",
      route: "/promotion",
    ),
    MenuModel(
      title: "คลังสินค้า",
      icon: "ware_house.svg",
      route: "/ware_house",
    ),
    MenuModel(
      title: "พื้นที่คลังสินค้า",
      icon: "box.svg",
      route: "/ware_house_space",
    ),
    MenuModel(
      title: "เพิ่มสินค้า",
      icon: "add_product.svg",
      route: "/add_product",
    ),
  ];
}
