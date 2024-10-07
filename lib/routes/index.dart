import 'package:admin_animal_flutter/pages/agenda_page.dart';
import 'package:admin_animal_flutter/pages/animal_page.dart';
import 'package:admin_animal_flutter/pages/create_animal.dart';
import 'package:admin_animal_flutter/pages/home_page.dart';
import 'package:admin_animal_flutter/pages/loading_page.dart';
import 'package:get/get.dart';

var routes = [
  GetPage(name: '/', page: () => const LoadingPage()),
  GetPage(name: '/home', page: () =>  const HomePage()),
  GetPage(name: '/animals', page: ()=> const AnimalPage()),
  GetPage(name: '/agenda', page: ()=> const AgendaPage()),
  GetPage(name: '/create-animal',
      page: ()=>  const CreateAnimal(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const  Duration(milliseconds: 350)
  )
];