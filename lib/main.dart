import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(DatabaseController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fade,
        initialRoute: '/',
        getPages: routes);
  }
}
