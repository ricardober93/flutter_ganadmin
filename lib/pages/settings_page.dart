import 'package:flutter/material.dart';

import 'package:admin_animal_flutter/controllers/setting_controller.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var settingCtr = Get.put(SettingController());
    return Scaffold(
        appBar: AppBar(
          title: Text(settingCtr.namePage),
          centerTitle: true,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: settingCtr.goInformationPage,
              child: const SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2.0,
                  margin: EdgeInsets.all(16.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Informacion del usuario",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.normal)),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
