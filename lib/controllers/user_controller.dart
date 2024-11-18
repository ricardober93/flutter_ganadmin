import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../db/db.dart';

class UserController extends GetxController {
  var database = Get.put(DatabaseController());

  var loadingUser = false.obs;

  var userId = "1".obs;

  var userName = "".obs;
  var userTextField = TextEditingController();

  var userEmail = "".obs;
  var emailTextField = TextEditingController();

  var userPassword = "".obs;
  var userPhone = "".obs;
  var phoneTextField = TextEditingController();

  var userAddress = "".obs;
  var addressTextField = TextEditingController();

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
    await (database.db.update(database.db.userEntries)
          ..where((user) => user.id.equals(int.parse(userId.value))))
        .write(
      UserEntriesCompanion(
        name: d.Value(userName.value),
      ),
    );

    userTextField.clear();

    Get.back();
  }

  Future<void> updateUserEmail() async {
    if (emailTextField.text == "") {
      return Get.back();
    }
    userEmail.value = emailTextField.text;
    await (database.db.update(database.db.userEntries)
          ..where((user) => user.id.equals(int.parse(userId.value))))
        .write(
      UserEntriesCompanion(
        email: d.Value(userEmail.value),
      ),
    );

    emailTextField.clear();

    Get.back();
  }

  Future<void> updateUserPhone() async {
    if (phoneTextField.text == "") {
      return Get.back();
    }
    userPhone.value = phoneTextField.text;
    await (database.db.update(database.db.userEntries)
          ..where((user) => user.id.equals(int.parse(userId.value))))
        .write(
      UserEntriesCompanion(
        phone: d.Value(userPhone.value),
      ),
    );

    phoneTextField.clear();

    Get.back();
  }

  Future<void> updateUserAddress() async {
    if (addressTextField.text == "") {
      return Get.back();
    }
    userAddress.value = addressTextField.text;
    await (database.db.update(database.db.userEntries)
          ..where((user) => user.id.equals(int.parse(userId.value))))
        .write(
      UserEntriesCompanion(
        address: d.Value(userAddress.value),
      ),
    );

    addressTextField.clear();

    Get.back();
  }

  @override
  void onInit() async {
    super.onInit();

    try {
      var user = await database.db.select(database.db.userEntries).getSingle();

      if (user.name.isEmpty) {
        Get.toNamed('/create-user');
      }
      userId.value = user.id.toString();
      userEmail.value = user.email;
      userName.value = user.name;
      userPassword.value = user.password;
      userPhone.value = user.phone ?? '';
      userAddress.value = user.address ?? '';

      userTextField.text = user.name;
      emailTextField.text = user.email;
      phoneTextField.text = user.phone ?? "";

      Get.toNamed('/home');
    } catch (e) {
      Get.toNamed('/create-user');
    }
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
