import 'package:admin_animal_flutter/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    var userCtr = Get.put(UserController());

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Obx(() {
                return Text(
                  userCtr.userName.value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                );
              })),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Get.toNamed('/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.manage_history),
            title: const Text('Animales'),
            onTap: () {
              Navigator.pop(context);
              Get.toNamed('/animals');
            },
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Eventos'),
            onTap: () {
              Navigator.pop(context);
              Get.toNamed('/agenda');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Get.toNamed('/settings');
            },
          ),
        ],
      ),
    );
  }
}
