import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var enableTextFeild = false.obs;
  XFile? pickedFile;
  final ImagePicker _picker = ImagePicker();

  

  OnEnableTextFeild() {
    enableTextFeild.value = !enableTextFeild.value;
    update();
  }

  pickCamera() async {
    pickedFile = await _picker.pickImage(source: ImageSource.camera);
    update();
    Get.back();
  }

  pickImage() async {
    pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    update();
    Get.back();
  }
}
