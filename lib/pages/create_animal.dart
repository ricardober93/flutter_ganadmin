import 'package:admin_animal_flutter/controllers/create_animal_controller.dart';
import 'package:admin_animal_flutter/widgets/AnimalSearchField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CreateAnimal extends StatelessWidget {
  const CreateAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    final type = Get.arguments;

    var animalCreateCtr = Get.put(CreateAnimalController());
    animalCreateCtr.onInit();

    animalCreateCtr.animalType.value = type;

    // Función para crear el animal
    createAnimal() {
      try {
        animalCreateCtr.createAnimal();
        Get.toNamed('/animals');
        Get.snackbar('Nuevo Animal Creado', "Se ha creado el Animal",
            backgroundColor: Colors.green, colorText: Colors.white);
      } catch (e) {
        Get.snackbar('Error al crear el animal', "",
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Animal'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nombre del Animal
              TextField(
                controller: animalCreateCtr.animalName,
                decoration: const InputDecoration(
                  labelText: 'Nombre del Animal',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Tipo de Adquisición
              Obx(  () => _buildDropdown(
                label: "Adquisición del animal",
                value: animalCreateCtr.animalType.value.isEmpty
                    ? null
                    : animalCreateCtr.animalType.value,
                items: animalCreateCtr.items,
                onChanged: (String? newValue) {
                  animalCreateCtr.setSelected(newValue!);
                },
              ),),
              const SizedBox(height: 16),

              // Formulario Condicional
              Obx(() {
                if (animalCreateCtr.animalType.value == "birth") {
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
                        onTap: () =>
                            animalCreateCtr.selectPurchaseDate(context),
                      ),
                      const SizedBox(height: 16),
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
              const SizedBox(height: 16),

              // Botón para Mostrar Más Detalles
              Center(
                child: TextButton(
                  onPressed: animalCreateCtr.toggleShowMore,
                  child: Obx(() => Text(animalCreateCtr.showMore.value
                      ? 'Ocultar más detalles'
                      : 'Mostrar más detalles')),
                ),
              ),

              // Más Detalles
              Obx(() {
                if (animalCreateCtr.showMore.value) {
                  return Column(
                    children: [
                      _buildCheckbox(
                        value: animalCreateCtr.animalIsDiscarded.value,
                        onChanged: animalCreateCtr.toggleIsDiscarded,
                        label: '¿Es un animal de descarte?',
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d*\.?\d{0,2}')),
                        ],
                        controller: animalCreateCtr.animalWeight,
                        decoration: const InputDecoration(
                          labelText: 'Peso del animal',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Estado del Animal
                      _buildDropdown(
                        label: "Estado del animal",
                        value: animalCreateCtr.animalStatus.value.isEmpty
                            ? null
                            : animalCreateCtr.animalStatus.value,
                        items: animalCreateCtr.statusList,
                        onChanged: (String? newValue) {
                          animalCreateCtr.setStatus(newValue!);
                        },
                      ),
                      const SizedBox(height: 16),

                      // Checkbox de Monta
                      _buildCheckbox(
                        value: animalCreateCtr.animalIsStallion.value,
                        onChanged: animalCreateCtr.toggleIsStallion,
                        label: '¿Es un animal de monta?',
                      ),
                      const SizedBox(height: 16),

                      // Buscador de Animales (Padre/Madre)
                      AnimalSearchField(
                        label: "Buscar nombre del padre animal ",
                        searchFunction: animalCreateCtr.searchAnimal,
                        selectedAnimal: animalCreateCtr.animalNameFather,
                        onAnimalSelect: (selectedAnimal) {
                          animalCreateCtr.selectAnimal(selectedAnimal);
                        },
                        filteredList: animalCreateCtr.filteredList,
                      ),
                      const SizedBox(height: 16),
                      AnimalSearchField(
                        label: "Buscar nombre de la madre animal ",
                        searchFunction: animalCreateCtr.searchAnimal,
                        selectedAnimal: animalCreateCtr.animalNameMother,
                        onAnimalSelect: (selectedAnimal) {
                          animalCreateCtr.selectAnimal(selectedAnimal);
                        },
                        filteredList: animalCreateCtr.filteredList,
                      ),
                    ],
                  );
                } else {
                  return const SizedBox.shrink();
                }
              })
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: FilledButton(
            onPressed: createAnimal, child: const Text("Crear Ficha")),
      ),
    );
  }

  // Widget para Dropdown personalizado
  Widget _buildDropdown({
    required String label,
    required String? value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: value,
          hint: Text(label),
          onChanged: onChanged,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }

  // Widget para Checkbox personalizado
  Widget _buildCheckbox({
    required bool value,
    required Function(bool?) onChanged,
    required String label,
  }) {
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Text(label),
      ],
    );
  }
}
