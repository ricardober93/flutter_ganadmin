import 'package:admin_animal_flutter/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingPage extends  StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(UserController());

    controller.onInit();

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFF000000),
                ) )
          ],
        ),
      ),
    );
  }
}