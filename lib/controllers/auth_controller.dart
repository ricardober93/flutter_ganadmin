import 'package:admin_animal_flutter/controllers/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var userCtr = Get.put(UserController());

  final CreatePage = 'Crear Cuenta';

  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passWordController = TextEditingController();

  void createuser() async {
    var mail = emailController.text;
    var name = nameController.text;
    var pass = passWordController.text;

   await  userCtr.createUser(mail, name, pass);

    emailController.clear();
    nameController.clear();
    passWordController.clear();

    Get.toNamed("/home");
  }

  @override
  void onClose() {
    emailController.dispose();
    nameController.dispose();
    passWordController.dispose();
    super.onClose();
  }
}
