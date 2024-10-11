import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final String time; // Hora del evento
  final String title; // Título del evento
  final String? description; // Descripción opcional del evento

  const EventTile({
    super.key,
    required this.time,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    // Definimos los colores en tonos verdes
    Color darkGreen = Colors.green[800]!; // Verde oscuro
    Color lightGreen = Colors.green[200]!; // Verde claro
    Color accentGreen = Colors.green[600]!; // Verde de acento

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: darkGreen, // Hora en verde oscuro
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: lightGreen!.withOpacity(0.2), // Fondo suave verde claro
                borderRadius: BorderRadius.circular(8.0), // Bordes redondeados
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                title: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: darkGreen, // Título en verde oscuro
                  ),
                ),
                subtitle: description != null && description!.isNotEmpty
                    ? Text(
                        description!,
                        style: TextStyle(
                          color: accentGreen, // Descripción en verde de acento
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
