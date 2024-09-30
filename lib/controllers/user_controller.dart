import 'package:get/get.dart';

class UserController extends GetxController {
  var loadingWithOutUser = false.obs;

  void showLoading() {
    loadingWithOutUser.value = true;
  }

  void hideLoading() {
    loadingWithOutUser.value = false;
  }

  @override
  void onInit() async {

    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed('/home');

    super.onInit();
  }
}
