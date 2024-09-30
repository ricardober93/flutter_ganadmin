import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/db/db.dart';
import 'package:admin_animal_flutter/db/tables.dart';
import 'package:get/get.dart';


class AnimalController extends GetxController {
  var isLoading = false.obs;
  List<AnimalEntry> animals = [];

  var database = Get.put(DatabaseController());

  void toggleLoading() {
    isLoading.value = !isLoading.value;
  }

  getAllAnimal() async {
    var animals = await database.db.getAllAnimals();
    print(animals);
  }

  @override
  void onInit() async {

    await Future.delayed(const Duration(seconds: 2));
    getAllAnimal();

    super.onInit();
  }
}
