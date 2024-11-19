import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/db/db.dart';
import 'package:flutter/material.dart';
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

  removeAnimal(int index) async {
    try {
      await (database.db.delete(database.db.animalEntries)
            ..where((table) => table.id.equals(index)))
          .go();

      Get.back();

      Get.snackbar(
        "Eliminacion Exitosa",
        "",
        backgroundColor: Colors.green,
      );

      await getAllAnimal();
    } catch (e) {
      // Maneja errores y los registra o lanza si es necesario
      Get.snackbar(
        "Hubo un problema",
        "Lo sentimos, vuelve a intentar",
        backgroundColor: Colors.red,
      );
      Get.back();
    }
  }

  @override
  void onInit() async {
    getAllAnimal();

    super.onInit();
  }
}
