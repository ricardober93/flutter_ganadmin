import 'package:admin_animal_flutter/controllers/create_animal_controller.dart';
import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/db/db.dart';
import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calendar_agenda/calendar_agenda.dart';

class AgendaController extends GetxController {
  var isLoading = false.obs;
  RxList<EventEntry> events = <EventEntry>[].obs;

  var database = Get.put(DatabaseController());
  var animalCreateCtr = Get.put(CreateAnimalController());

  final CalendarAgendaController calendarAgendaControllerAppBar =
      CalendarAgendaController();

  late DateTime selectedDateAppBBar;

  var titleController = TextEditingController();
  var descriptionController = TextEditingController();
  var typeEvent = ''.obs;
  var listEvents = <String>['Vacuna', 'Cita', 'Evento'];
  var codeId;
  var animalId = TextEditingController();

  onDateSelect(date) {
    selectedDateAppBBar = date;
  }

  setTypeEvent(String type) {
    typeEvent.value = type;
  }

  void selectAnimal(String name) {
    animalId.text = name;
    animalCreateCtr.filteredList.assignAll(animalCreateCtr.animalList);
  }

  Future<void> getEventsForDate(DateTime date) async {
    isLoading.value = true;
    final startOfDay = DateTime(date.year, date.month, date.day, 0, 0, 0);
    final endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59);
    var response = await (database.db.select(database.db.eventEntries)
          ..where((event) => event.date.isBetweenValues(startOfDay, endOfDay)))
        .get();

    events.value = response;
    isLoading.value = false;
  }

  Future<void> insertEvent({
    required String title,
    String? description,
    required DateTime date,
    required String eventType,
  }) async {
    codeId = animalCreateCtr.animalList
        .firstWhere((animal) => animal.name == animalId.text)
        .id;

    final newEvent = EventEntriesCompanion(
      title: d.Value(title),
      description: d.Value(description), // Puede ser nulo
      date: d.Value(date),
      eventType: d.Value(eventType),
      animalId: codeId != null ? d.Value(codeId) : const d.Value.absent(),
    );

    await database.db.into(database.db.eventEntries).insert(newEvent);
  }

  @override
  void onInit() async {
    selectedDateAppBBar = DateTime.now();
    await animalCreateCtr.animalCtr.getAllAnimal();
    await getEventsForDate(selectedDateAppBBar);
    super.onInit();
  }

  @override
  void onClose() {
    calendarAgendaControllerAppBar.dispose();
    titleController.dispose();
    descriptionController.dispose();
    animalId.dispose();
    super.onClose();
  }

  back() {
    Get.back();
  }

  void showModal(Widget sheet) {
    Get.bottomSheet(sheet, backgroundColor: Colors.white);
  }

  void createEvent() {
    print(titleController.text);
    print(descriptionController.text);

    print(typeEvent.value);
  }
}
