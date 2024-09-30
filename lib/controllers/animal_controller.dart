import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/db/db.dart';
import 'package:get/get.dart';

class AnimalController extends GetxController {
  var isLoading = false.obs;
  RxList<AnimalEntry> animals = <AnimalEntry>[].obs;

  var database = Get.put(DatabaseController());

  void toggleLoading() {
    isLoading.value = !isLoading.value;
  }

  Future<void> getAllAnimal() async {
    isLoading.value = true;
    var res = await database.db.select(database.db.animalEntries).get();

    animals.value = res.toList();
    isLoading.value = false;
  }

  removeAnimal(int index){

  }

  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 2));
    getAllAnimal();

    super.onInit();
  }
}
