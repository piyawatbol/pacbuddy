import 'package:get/get.dart';
import 'package:packbuddy/model/product_model.dart';

class ProductController extends GetxController {
  List<Product> productList = [
    Product(
      id: 134534535,
      product_name: "ปากกาลูกลื่น",
      product_type: "ปากกา",
      amount: 10,
      price: 5,
      product_status: true,
    ),
    Product(
      id: 223463462,
      product_name: "ดินสอ 2 B",
      product_type: "ดินสอ",
      amount: 20,
      price: 10,
      product_status: false,
    ),
  ];

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  getProduct() {
    productList = productList;
    update();
  }
}
