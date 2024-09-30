import 'package:admin_animal_flutter/db/db.dart';
import 'package:get/get.dart';


class DatabaseController extends GetxController {
  late AppDatabase _db;

  AppDatabase get db => _db;

  @override
  void onInit() {
    super.onInit();
    _initializeDatabase();
  }

  void _initializeDatabase() {
    _db = AppDatabase();
  }

  @override
  void onClose() {
    _db.close();
    super.onClose();
  }
}
