import 'package:admin_animal_flutter/controllers/home_controller.dart';
import 'package:admin_animal_flutter/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    return Scaffold(
      drawer: const DrawerNav(),
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Text('Admin'), // just call `controller.something`
      ),
    );
  }
}
