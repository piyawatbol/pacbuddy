import 'package:get/get.dart';

class WareHouseController extends GetxController {
  var search1 = false.obs; // for ware house page
  var search2 = false.obs; // for ware house space
  List<String> dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  onSearchSwitch1() {
    search1.value = !search1.value;
    update();
  }

  onSearchSwitch2() {
    search2.value = !search2.value;
    update();
  }
}
