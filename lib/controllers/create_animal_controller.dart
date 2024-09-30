

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAnimalController extends GetxController{

  var animalName = TextEditingController();
  var animalBirthDate = TextEditingController();
  var animalPurchasedDate = TextEditingController();

  var animalPrice = TextEditingController();


  Future<void> selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (pickedDate != null) {
      animalBirthDate.text =
          pickedDate.toString().substring(0, 10); // Format date as yyyy-MM-dd
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
          pickedDate.toString().substring(0, 10); // Format date as yyyy-MM-dd
    }
  }


  @override
  void onClose() {
    animalName.dispose();
    animalBirthDate.dispose();
    animalPurchasedDate.dispose();
    animalPrice.dispose();

    super.onClose();
  }
}