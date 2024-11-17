import 'package:admin_animal_flutter/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateUserPage extends StatelessWidget {
  const CreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    var authCtr = Get.put(AuthController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Wrap(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    authCtr.CreatePage,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 68,),
                Column(
                  children: [
                    TextField(
                      controller: authCtr.emailController,
                      decoration: const InputDecoration(
                        labelText: 'email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24,),
                    TextField(
                      controller: authCtr.nameController,
                      decoration: const InputDecoration(
                        labelText: 'nombre',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24,),
                    TextField(
                      controller: authCtr.passWordController,
                      decoration: const InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledButton(
                          onPressed: authCtr.createuser,
                          child: const Text("Crear usuario")),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
