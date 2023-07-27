import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedValue = 'วันนี้'.obs;
  var openTopsaleAll = false.obs;

  List<String> dropdownItems = ["วันนี้", "7 วัน", '1 เดือน'].obs;

  onSelectDropDown(value) {
    selectedValue.value = value;
    update();
  }

  OnopenTopsaleAll() {
    openTopsaleAll(!openTopsaleAll.value);
    update();
  }
}
