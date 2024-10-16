import 'package:flutter/material.dart';

class SettingUserInformation extends StatelessWidget {
  const SettingUserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informacion del Usuario'),
        ),
        body: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              title: Text('Nombre'),
              subtitle: Text('Juan Perez'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Navegar a la pantalla de edición de nombre
              },
            ),
            ListTile(
              title: Text('Correo Electrónico'),
              subtitle: Text('juanperez@example.com'),
              leading: Icon(Icons.email),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Navegar a la pantalla de edición de correo electrónico
              },
            ),
            ListTile(
              title: Text('Contraseña'),
              subtitle: Text('********'),
              leading: Icon(Icons.lock),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Navegar a la pantalla de edición de contraseña
              },
            ),
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
          ]
        ));
  }
}
