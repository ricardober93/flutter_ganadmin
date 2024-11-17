import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:drift/drift.dart' as d;

import '../db/db.dart';

class UserController extends GetxController {
  var database = Get.put(DatabaseController());

  var loadingUser = false.obs;

  var userId = "1".obs;

  var userName = "".obs;
  var userTextField = TextEditingController();

  var userEmail = "".obs;
  var userPassword = "".obs;
  var userPhone = "".obs;
  var userAddress = "".obs;

  void showLoading() {
    loadingUser.value = true;
  }

  void hideLoading() {
    loadingUser.value = false;
  }

  Future<void> updateUSerName() async {
    if (userTextField.text == "") {
      return Get.back();
    }
    userName.value = userTextField.text;
    (database.db.update(database.db.userEntries)
          ..where((user) => user.id.equals(int.parse(userId.value))))
        .write(
      UserEntriesCompanion(
        name: d.Value(userName.value), // Solo actualizamos el campo `name`
      ),
    );

    userTextField.clear();

    Get.back();
  }

  @override
  void onInit() async {
    var user = await database.db.select(database.db.userEntries).getSingle();

    if (user.name == "") {
      Get.toNamed('/create-user');
    } else {
      userId.value = user.id.toString();
      userEmail.value = user.email;
      userName.value = user.name;
      userPassword.value = user.password;
      userPhone.value = user.phone ?? '';
      userAddress.value = user.address ?? '';

      Get.toNamed('/home');
    }

    super.onInit();
  }

  @override
  void onClose() {
    userTextField.dispose();

    super.onClose();
  }

  Future<void> createUser(String mail, String name, String pass) async {
    var response = await database.db.into(database.db.userEntries).insert(
        UserEntriesCompanion.insert(email: mail, name: name, password: pass));

    userName.value = name;
    userId.value = response.toString();
    userEmail.value = mail;
    userPassword.value = pass;
  }
}
