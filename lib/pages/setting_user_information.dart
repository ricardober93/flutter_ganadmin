import 'package:admin_animal_flutter/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingUserInformation extends StatelessWidget {
  const SettingUserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var userCtr = Get.put(UserController());

    updateUserNameBottomSheet() {
      Get.bottomSheet(bottomSheet(), backgroundColor: Colors.white);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Informacion del Usuario'),
        ),
        body: Wrap(runSpacing: 16, children: [
          Obx(() {
            return ListTile(
                title: const Text('Nombre'),
                subtitle: Text(userCtr.userName.value ?? ''),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  updateUserNameBottomSheet();
                });
          }),
          Obx(() {
            return  ListTile(
              title: Text('Correo Electrónico'),
              subtitle:Text(userCtr.userEmail.value ?? ''),
              leading: Icon(Icons.email),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Navegar a la pantalla de edición de correo electrónico
              },
            );
          }),
          ListTile(
            title: Text('Teléfono'),
            subtitle: Text('+1 123 456 7890'),
            leading: Icon(Icons.phone),
            trailing: Icon(Icons.edit),
            onTap: () {
              // Navegar a la pantalla de edición de teléfono
            },
          ),
          ListTile(
            title: Text('Dirección'),
            subtitle: Text('123 Main St, Anytown, USA'),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.edit),
            onTap: () {
              // Navegar a la pantalla de edición de dirección
            },
          ),
        ]));
  }

  Widget bottomSheet() {
    var userCtr = Get.put(UserController());

    return Container(
      height: 300,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Deseas actualizar tu nombre?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: userCtr.userTextField,
              decoration: const InputDecoration(
                labelText: 'Nombre del Usuario',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                  onPressed: userCtr.updateUSerName,
                  child: const Text("actualizar nombre")),
            )
          ],
        ),
      ),
    );
  }
}
