import 'package:admin_animal_flutter/controllers/create_animal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAnimal extends StatelessWidget {
  CreateAnimal({super.key});

  final RxString type = 'birth'.obs;

  @override
  Widget build(BuildContext context) {
    type.value = Get.arguments as String;

    var animalCreateCtr = Get.put(CreateAnimalController());

    createAnimal() {
      //VALIDAR FORMULARIO

      Get.snackbar('Nuevo Animal Creado', "Se ha creado el Animal numero 2");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Animal'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: animalCreateCtr.animalName,
              decoration: const InputDecoration(
                labelText: 'Nombre del Animal',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Obx(() {
              if (type.value == "birth") {
                return TextField(
                  controller: animalCreateCtr.animalBirthDate,
                  decoration: const InputDecoration(
                    labelText: 'Fecha de nacimiento',
                    border: OutlineInputBorder(),
                  ),
                  readOnly: true,
                  onTap: () => animalCreateCtr.selectDate(context),
                );
              } else {
                return Column(
                  children: [
                    TextField(
                      controller: animalCreateCtr.animalPurchasedDate,
                      decoration: const InputDecoration(
                        labelText: 'Fecha de Compra',
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,
                      onTap: () => animalCreateCtr.selectPurchaseDate(context),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: animalCreateCtr.animalPrice,
                      decoration: const InputDecoration(
                        labelText: 'Precio del animal',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                );
              }
            }),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text('Agregar mas detalles'),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: FilledButton(
            onPressed: createAnimal, child: const Text("Crear Ficha")),
      ),
    );
  }
}
