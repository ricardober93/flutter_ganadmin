import 'package:admin_animal_flutter/controllers/animal_controller.dart';
import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/db/db.dart';
import 'package:admin_animal_flutter/extension/date_time_extension.dart';
import 'package:admin_animal_flutter/extension/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:drift/drift.dart' as d;

class CreateAnimalController extends GetxController {
  var showMore = false.obs;

  var database = Get.put(DatabaseController());

  var animalCtr = Get.put(AnimalController());

  var animalName = TextEditingController();
  var animalBirthDate = TextEditingController();
  var animalPurchasedDate = TextEditingController();
  var animalIsStallion = false.obs;
  var animalIsInventoried = false.obs;
  var animalIsDiscarded = false.obs;
  var animalPrice = TextEditingController();
  var animalType = "birth".obs;
  var animalStatus = "".obs;
  var animalNameFather = TextEditingController();
  var codeFather;
  var animalNameMother = TextEditingController();
  var codeMother;
  var animalWeight = TextEditingController();

  List<String> items = ["birth", "Purchase"];
  var statusList = ['Sano', "Muerto", 'Enfermo'];
  var filteredList = <AnimalEntry>[].obs;
  var animalList = <AnimalEntry>[].obs;

  void toggleIsDiscarded(bool? value) {
    animalIsDiscarded.value = value!;
  }

  void toggleIsStallion(bool? value) {
    animalIsStallion.value = value!;
  }

  void toggleIsInventoried(bool value) {
    animalIsInventoried.value = value;
  }

  void setSelected(String value) {
    animalType.value = value;
  }

  void setStatus(String value) {
    animalStatus.value = value;
  }

  void searchAnimal(String query) {
    if (query.isEmpty) {
      filteredList.assignAll(animalList);
    } else {
      filteredList.assignAll(animalList
          .where((animal) =>
              animal.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    }
  }

  void selectAnimal(String name) {
    animalNameFather.text = name;
    filteredList.assignAll(animalList);
  }

  Future<void> selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (pickedDate != null) {
      animalBirthDate.text =
          pickedDate.shortFormat().toString(); // Format date as yyyy-MM-dd
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
          pickedDate.shortFormat().toString(); // Format date as yyyy-MM-dd
    }
  }

  Future<int> createAnimal() async {
    if (animalNameFather.text.isNotEmpty) {
      codeFather = animalList
          .firstWhere((animal) => animal.name == animalNameFather.text)
          .id;
    }
    if (animalNameMother.text.isNotEmpty) {
      codeMother = animalList
          .firstWhere((animal) => animal.name == animalNameMother.text)
          .id;
    }

    final res = await database.db.into(database.db.animalEntries).insert(
          AnimalEntriesCompanion.insert(
            birthDate: animalBirthDate.text.isNotEmpty
                ? d.Value(animalBirthDate.text.toDateTime())
                : const d.Value.absent(),
            name: animalName.text,
            isInventoried: d.Value(animalIsInventoried.value),
            isStallion: d.Value(animalIsStallion.value),
            health: d.Value(animalStatus.value),
            weight: d.Value(animalWeight.text),
            codeFather: codeFather != null
                ? d.Value(codeFather)
                : const d.Value.absent(),
            isDiscarded: d.Value(animalIsDiscarded.value),
            codeMother: codeMother != null
                ? d.Value(codeMother)
                : const d.Value.absent(),
          ),
        );

    //CLEAR CONTROLLERS
    clearInputs();

    return res;
  }

  void clearInputs() {
    animalName.clear();
    animalBirthDate.clear();
    animalPurchasedDate.clear();
    animalPrice.clear();
    animalWeight.clear();
    animalNameFather.clear();
    animalNameMother.clear();
    animalIsDiscarded.value = false;
    animalIsInventoried.value = false;
    animalIsStallion.value = false;
    animalStatus.value = "";
    animalType.value = "birth";
    codeFather = null;
    codeMother = null;
    showMore.value = false;

    animalList.assignAll(animalCtr.animals);
    filteredList.assignAll(animalCtr.animals);
  }

  void toggleShowMore() => showMore.value = !showMore.value;

  @override
  void onInit() async {
    await animalCtr.getAllAnimal();

    animalList.assignAll(animalCtr.animals);
    filteredList.assignAll(animalCtr.animals);
    super.onInit();
  }

  @override
  void onClose() {
    animalName.dispose();
    animalBirthDate.dispose();
    animalPurchasedDate.dispose();
    animalPrice.dispose();
    animalWeight.dispose();

    super.onClose();
  }
}
