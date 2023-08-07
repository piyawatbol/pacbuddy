import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packbuddy/model/post_model.dart';
import 'package:packbuddy/model/tel_model.dart';

class AddOrderController extends GetxController {
  TextEditingController zipcode1 = TextEditingController();
  TextEditingController zipcode2 = TextEditingController();
  var filterSelect = ''.obs;
  var filterList = ['All', 'Logitech', 'anitech'].obs;
  var count = 0.obs;
  var selectSex = ''.obs;
  var keyboard = false.obs;
  var type_taxpayer = ''.obs;
  List<String> sexList = ['ชาย', 'หญิง'].obs;
  List<String> phoneList1 = [];
  List<String> phoneList2 = [];
  List<String> paymentMethodList = [
    'COD (เก็บเงินปลายทาง)',
    'Cash (เงินสด)',
    'Credit Card (บัตรเคดิต)',
    'Bank Tranfer (โอน)',
    'Mixed Card',
  ];
  List<Map<String, Object>> locations = PostModel.postdata;
  List<Map<String, Object>> telephone = TelModel.telData;
  // 1 customer
  var selectSubDistrict1 = ''.obs;
  var selectDistrict1 = ''.obs;
  var selectProvince1 = ''.obs;
  var selectSubDistrict2 = ''.obs;
  var selectDistrict2 = ''.obs;
  var selectProvince2 = ''.obs;
  var selectPayment = ''.obs;
  var selectPhone1 = '+66 TH'.obs;
  var selectPhone2 = '+66 TH'.obs;
  List<String> subDistrictList1 = [];
  List<String> districtList1 = [];
  List<String> provinceList1 = [];
  //2 receiver

  List<String> subDistrictList2 = [];
  List<String> districtList2 = [];
  List<String> provinceList2 = [];
  onFilterProduct(value) {
    filterSelect.value = value;
    update();
    Get.back();
  }

  onKeyboard() {
    keyboard.value = false;
    print(keyboard);
    update();
  }

  onAddCount() {
    count.value = count.value + 1;
    update();
  }

  onMinusCount() {
    count.value = count.value - 1;
    update();
  }

  onSelectSex(value) {
    selectSex.value = value;
    update();
  }

  onSelectTypetexpayer(value) {
    type_taxpayer.value = value;
    update();
  }

  onSelectPayment(value) {
    selectPayment.value = value;
    update();
  }

  /// customer 1

  onSelectPhone1(value) {
    selectPhone1.value = value;
  }

  onSelectPhone2(value) {
    selectPhone2.value = value;
  }

  ClearPostData1() {
    subDistrictList1.clear();
    districtList1.clear();
    provinceList1.clear();
    selectSubDistrict1.value = '';
    selectDistrict1.value = '';
    selectProvince1.value = '';
    update();
  }

  getLocationByPostalCode1(int postalCode) {
    List locationList = locations
        .where((location) => location['postalCode'] == postalCode)
        .toList();

    for (var location in locationList) {
      String subdistrictNameTh = location['subdistrictNameTh'];
      String districtNameTh = location['districtNameTh'];
      String provinceNameTh = location['provinceNameTh'];

      if (!subDistrictList1.contains(subdistrictNameTh)) {
        subDistrictList1.add(subdistrictNameTh);
      }

      if (!districtList1.contains(districtNameTh)) {
        districtList1.add(districtNameTh);
      }

      if (!provinceList1.contains(provinceNameTh)) {
        provinceList1.add(provinceNameTh);
      }
    }

    update();
  }

  /// receiver 2

  ClearPostData2() {
    subDistrictList2.clear();
    districtList2.clear();
    provinceList2.clear();
    selectSubDistrict2.value = '';
    selectDistrict2.value = '';
    selectProvince2.value = '';
    update();
  }

  getLocationByPostalCode2(int postalCode) {
    List locationList = locations
        .where((location) => location['postalCode'] == postalCode)
        .toList();

    for (var location in locationList) {
      String subdistrictNameTh = location['subdistrictNameTh'];
      String districtNameTh = location['districtNameTh'];
      String provinceNameTh = location['provinceNameTh'];

      if (!subDistrictList2.contains(subdistrictNameTh)) {
        subDistrictList2.add(subdistrictNameTh);
      }

      if (!districtList2.contains(districtNameTh)) {
        districtList2.add(districtNameTh);
      }

      if (!provinceList2.contains(provinceNameTh)) {
        provinceList2.add(provinceNameTh);
      }
    }

    update();
  }

  getTelData() {
    for (var i = 0; telephone.length > i; i++) {
      phoneList1.add("${telephone[i]['dial_code']} ${telephone[i]['code']}");
      phoneList2.add("${telephone[i]['dial_code']} ${telephone[i]['code']}");
    }
  }

  onInit() {
    getTelData();
    super.onInit();
  }
}
