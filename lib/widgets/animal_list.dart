import 'package:flutter/material.dart';

class AnimalListTile extends StatelessWidget {
  final String name;
  final String birthDate;
  final Function() onDelete;

  const AnimalListTile({super.key,
    required this.name,
    required this.birthDate,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {

    const Color darkGreen = Color(0xFF2E7D32);
    const Color lightGreen = Color(0xFFA5D6A7);
    const Color accentGreen = Color(0xFF66BB6A);
    const Color deleteRed = Color(0xFFE57373);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: lightGreen.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: darkGreen,
          ),
        ),
        subtitle: Text(
          'Ingreso: $birthDate',
          style: const TextStyle(
            color: accentGreen,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          color: deleteRed,
          onPressed: onDelete,
        ),
      ),
    );
  }
}
