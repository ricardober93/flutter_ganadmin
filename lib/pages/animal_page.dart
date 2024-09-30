import 'package:admin_animal_flutter/controllers/animal_controller.dart';
import 'package:admin_animal_flutter/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ctr = Get.put(AnimalController());

    ctr.onInit();


    return Scaffold(
      drawer: const DrawerNav(),
      appBar: AppBar(
        title: const Text('Lista de Animales'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child:
            const Text('lista de animales'), // just call `controller.something`
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // Trigger the BottomSheet
            Get.bottomSheet(bottomSheet(context), backgroundColor: Colors.white);

          }),

    );
  }

  Widget bottomSheet(BuildContext context){

    void redirectToCreateAnimalTypeBirth() {
      Navigator.pop(context);
      Get.toNamed("/create-animal", arguments: 'birth', preventDuplicates: true);
    }

    redirectToCreateAnimalTypePurchase() {
      Navigator.pop(context);
      Get.toNamed("/create-animal", arguments: 'purchase', preventDuplicates: true);
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
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w700),
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
