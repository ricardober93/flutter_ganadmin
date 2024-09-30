import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/db/db.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:drift/drift.dart' as d;

class CreateAnimalController extends GetxController {
  var database = Get.put(DatabaseController());

  var animalName = TextEditingController();
  var animalBirthDate = TextEditingController();
  var animalPurchasedDate = TextEditingController();
  var animalIsStallion = false.obs;
  var animalIsInventoried = false.obs;
  var animalPrice = TextEditingController();
  var animalType = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (pickedDate != null) {
      animalBirthDate.text = pickedDate.toString(); // Format date as yyyy-MM-dd
    }
  }

  Future<void> selectPurchaseDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (pickedDate != null) {
      animalPurchasedDate.text =
          pickedDate.toString(); // Format date as yyyy-MM-dd
    }
  }

  Future<int> createAnimal() async {
    return await database.db.into(database.db.animalEntries).insert(
        AnimalEntriesCompanion.insert(
            birthDate: d.Value(DateTime.parse(animalBirthDate.text)),
            name: animalName.text,
            isInventoried: d.Value(animalIsInventoried.value),
            isStallion: d.Value(animalIsStallion.value)));
  }

  @override
  void onClose() {
    animalName.dispose();
    animalBirthDate.dispose();
    animalPurchasedDate.dispose();
    animalPrice.dispose();
    animalType.dispose();

    super.onClose();
  }
}
