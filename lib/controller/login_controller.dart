import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  var hidePass = true.obs;
  var rememberPass = false.obs;

  onHidePassword() {
    hidePass(!hidePass.value);
    update();
  }

  onRememberPass() {
    rememberPass(!rememberPass.value);
    update();
  }
}
