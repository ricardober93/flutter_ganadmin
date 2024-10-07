
import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  final String title = 'Administrador ganadero';
  var database = Get.put(DatabaseController());

  var animaCount = '0'.obs;

  Future<void> countTotalAnimal() async {
    isLoading.value = true;
    var count = await database.db.managers.animalEntries.count();
    animaCount.value = count.toString();
    isLoading.value = false;
  }


  @override
  void onInit() async  {
    await countTotalAnimal();
    super.onInit();
  }

}
