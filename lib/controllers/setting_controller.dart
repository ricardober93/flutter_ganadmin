import 'package:get/get.dart';

class SettingController extends GetxController {

  final namePage = 'Setting Page';


  goInformationPage() {
    Get.toNamed('/setting-informacion');
  }


  @override
  void onInit() {
    super.onInit();
    print('onInit SettingController');
  }

}