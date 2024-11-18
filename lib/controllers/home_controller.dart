import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  final String title = 'Administrador ganadero';
  var database = Get.put(DatabaseController());

  var animaCount = '0'.obs;

  Future<void> countTotalAnimal() async {
    var animals = await database.db.select(database.db.animalEntries).get();
    animaCount.value = animals.length.toString();
    isLoading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;
    await countTotalAnimal();
  }
}
