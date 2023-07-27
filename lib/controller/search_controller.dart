import 'package:get/get.dart';

class SearchController extends GetxController {
  var searchSelect = "".obs;
  List searchList = ['ชื่อ', 'เบอร์โทร', 'เลขที่ใบสั่งซื้อ', 'รหัสพัสดุ'];

  onSelect(value) {
    searchSelect.value = value;
    update();
    Get.back();
  }
}
