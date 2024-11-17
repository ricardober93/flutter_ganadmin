import 'package:admin_animal_flutter/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingUserInformation extends StatelessWidget {
  const SettingUserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var userCtr = Get.put(UserController());

    updateUserNameBottomSheet() {
      Get.bottomSheet(bottomSheet(
        'nombre',
        userCtr.userTextField,
        userCtr.updateUSerName
      ), backgroundColor: Colors.white);
    }

    updateUserEmailBottomSheet(){
      Get.bottomSheet(bottomSheet(
        'Correo electronico',
        userCtr.emailTextField,
        userCtr.updateUserEmail
      ), backgroundColor: Colors.white);
    }

    updateUserPhoneBottomSheet(){
      Get.bottomSheet(bottomSheet(
          'Telefono',
          userCtr.phoneTextField,
          userCtr.updateUserPhone
      ), backgroundColor: Colors.white);
    }

    updateUserAddressBottomSheet(){
      Get.bottomSheet(bottomSheet(
          'Direccion',
          userCtr.addressTextField,
          userCtr.updateUserAddress
      ), backgroundColor: Colors.white);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Informacion del Usuario'),
        ),
        body: Wrap(runSpacing: 16, children: [
          Obx(() {
            return ListTile(
                title: const Text('Nombre'),
                subtitle: Text(userCtr.userName.value ?? ''),
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.edit),
                onTap: () {
                  updateUserNameBottomSheet();
                });
          }),
          Obx(() {
            return  ListTile(
              title: const Text('Correo Electrónico'),
              subtitle:Text(userCtr.userEmail.value ?? ''),
              leading: const Icon(Icons.email),
              trailing: const Icon(Icons.edit),
              onTap: () {
                updateUserEmailBottomSheet();
              },
            );
          }),
          Obx( (){
            return ListTile(
              title: const Text('Teléfono'),
              subtitle: Text( userCtr.userPhone.value ?? ''),
              leading: const Icon(Icons.phone),
              trailing: const Icon(Icons.edit),
              onTap: () {
                updateUserPhoneBottomSheet();
              },
            );
          }),
          Obx( (){
           return ListTile(
              title: const Text('Dirección'),
              subtitle: Text(userCtr.userAddress.value ?? ''),
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.edit),
              onTap: () {
                updateUserAddressBottomSheet();
              },
            );
          })
        ]));
  }

  Widget bottomSheet(
     String title,
     TextEditingController controller,
     VoidCallback action
      ) {

    return Container(
      height: 300,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Deseas actualizar tu $title",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: controller,
              decoration:  InputDecoration(
                labelText: title,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                  onPressed: action,
                  child: Text("actualizar $title")),
            )
          ],
        ),
      ),
    );
  }
}
