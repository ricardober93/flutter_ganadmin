import 'package:admin_animal_flutter/db/db.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimalSearchField extends StatelessWidget {
  final String label;
  final Function(String) searchFunction;
  final TextEditingController selectedAnimal;
  final Function(String) onAnimalSelect;
  final RxList<AnimalEntry> filteredList;

  const AnimalSearchField({
    super.key,
    required this.label,
    required this.searchFunction,
    required this.selectedAnimal,
    required this.onAnimalSelect,
    required this.filteredList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(),
          child: TextField(
            decoration: InputDecoration(
              labelText: label,
              border: const OutlineInputBorder(),
            ),
            onChanged: (value) {
              searchFunction(
                  value); // Filtra la lista en función del valor ingresado
            },
            controller: selectedAnimal,
            onTap: () {
              // Abre el BottomSheet cuando se hace clic en el TextField
              _showAnimalSelectionBottomSheet(context);
            },
          ),
        ),
      ],
    );
  }

  void _showAnimalSelectionBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Buscar $label",
                  border: const OutlineInputBorder(),
                ),
                onChanged:
                    searchFunction,
              ),
            ),
            Expanded(
              child: filteredList.isNotEmpty
                  ? ListView.builder(
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        final animal = filteredList[index];
                        return ListTile(
                          title: Text(animal.name),
                          onTap: () {
                            selectedAnimal.text = animal.name;
                            onAnimalSelect(animal.name);

                            Navigator.pop(context);
                          },
                        );
                      },
                    )
                  : const Center(child: Text("No se encontraron animales")),
            ),
          ],
        );
      },
    );
  }
}
