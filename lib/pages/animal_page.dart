import 'package:admin_animal_flutter/controllers/animal_controller.dart';
import 'package:admin_animal_flutter/extension/date_time_extension.dart';
import 'package:admin_animal_flutter/widgets/animal_list.dart';
import 'package:admin_animal_flutter/widgets/drawer_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ctr = Get.put(AnimalController());

    return Scaffold(
      drawer: const DrawerNav(),
      appBar: AppBar(
        title: const Text('Lista de Animales'),
      ),
      body: Obx(() {
        if (ctr.isLoading.value) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.green,
          ));
        }
        if (ctr.animals.isNotEmpty) {
          return ListView.builder(
            itemCount: ctr.animals.length,
            itemBuilder: (context, index) {
              final animal = ctr.animals[index];
              return AnimalListTile(
                  name: animal.name,
                  birthDate: animal.birthDate!.shortFormat(),
                  onDelete: () =>
                      Get.dialog(dialogCustom(context, ctr.animals[index].id)));
            },
          );
        }

        return const Center(
          child: Wrap(
            runSpacing: 16,
            alignment: WrapAlignment.center,
            direction: Axis.vertical,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.event,
                size: 64,
              ),
              Text(
                "No hay Animales",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // Trigger the BottomSheet
            Get.bottomSheet(bottomSheet(context),
                backgroundColor: Colors.white);
          }),
    );
  }

  Widget dialogCustom(BuildContext context, int index) {
    var ctr = Get.put(AnimalController());

    return Center(
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Text(
                "Desea eliminar el animal?",
                style: TextStyle(fontSize: 24, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 48,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.black54),
                        onPressed: () => Navigator.pop(context),
                        child: Text("No")),
                  ),
                  SizedBox(
                    child: FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white),
                        onPressed: () => ctr.removeAnimal(index),
                        child: Text("confimar")),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    void redirectToCreateAnimalTypeBirth() {
      Navigator.pop(context);
      Get.toNamed("/create-animal",
          arguments: 'birth', preventDuplicates: true);
    }

    redirectToCreateAnimalTypePurchase() {
      Navigator.pop(context);
      Get.toNamed("/create-animal",
          arguments: 'purchase', preventDuplicates: true);
    }

    return Container(
      height: 350,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(children: [
              const Spacer(),
              TextButton(
                child: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              )
            ]),
            const SizedBox(
              height: 16,
            ),
            const Text(
              '¿Cómo deseas ingresar tu nuevo animal?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: redirectToCreateAnimalTypeBirth,
                  child: const Text("Nacimiento")),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: redirectToCreateAnimalTypePurchase,
                  child: const Text("Compra")),
            ),
          ],
        ),
      ),
    );
  }
}
