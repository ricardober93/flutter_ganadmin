import 'package:admin_animal_flutter/controllers/home_controller.dart';
import 'package:admin_animal_flutter/widgets/AnimalStat.dart';
import 'package:admin_animal_flutter/widgets/AnimalStatSkeleton.dart';
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
        child: Wrap(
          children: [
            Obx(() {
              if (controller.isLoading.value) {
                return const AnimalStatSkeleton();
              } else {
                return AnimalStat(
                  count: controller.animaCount.value,
                  icon: Icons.upload,
                  title: 'Animales totales',
                );

              }
            })
          ],
        ), // just call `controller.something`
      ),
    );
  }
}
