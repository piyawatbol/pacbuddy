import 'package:get/get.dart';

class AddOrderController extends GetxController {
  
  var onKeyboard = false.obs;
  var filterSelect = ''.obs;
  var filterList = ['All', 'Logitech', 'anitech'].obs;

  

  bool focus = false;

  onSelect(value) {
    filterSelect.value = value;
    update();
    Get.back();
  }

  onTapKeyboard() {
    onKeyboard.value = false;
    print(onKeyboard);
    update();
  }
}
