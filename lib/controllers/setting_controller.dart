import 'package:get/get.dart';

class SettingController extends GetxController {

  final namePage = 'Setting Page';


  goInformationPage() {
    Get.toNamed('/setting-informacion');
  }


  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 2));
    print('onInit SettingController');
  }

}