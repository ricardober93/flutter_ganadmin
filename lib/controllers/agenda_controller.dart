import 'package:admin_animal_flutter/controllers/create_animal_controller.dart';
import 'package:admin_animal_flutter/controllers/database_controller.dart';
import 'package:admin_animal_flutter/db/db.dart';
import 'package:admin_animal_flutter/extension/string_extension.dart';
import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:intl/intl.dart';

class AgendaController extends GetxController {
  var isLoading = false.obs;
  RxList<EventEntry> events = <EventEntry>[].obs;

  var database = Get.put(DatabaseController());
  var animalCreateCtr = Get.put(CreateAnimalController());

  final CalendarAgendaController calendarAgendaControllerAppBar =
      CalendarAgendaController();

  late DateTime selectedDateAppBar;

  var titleController = TextEditingController();
  var descriptionController = TextEditingController();
  var typeEvent = ''.obs;
  var listEvents = <String>['Vacuna', 'Cita', 'Evento'];
  var codeId;
  var animalId = TextEditingController();

  var agendaDate = TextEditingController();

  onDateSelect(date) {
    selectedDateAppBar = date;
    getEventsForDate(selectedDateAppBar);
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

  Future<void> selectDateTime(BuildContext context) async {
    // Seleccionamos la fecha
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );

    if (pickedDate != null) {
      // Seleccionamos la hora y minutos
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        // Combinamos la fecha y la hora
        var fullDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        // Formatear la fecha y la hora (ejemplo: yyyy-MM-dd HH:mm)
        String formattedDateTime =
            DateFormat('yyyy-MM-dd HH:mm').format(fullDateTime);
        agendaDate.text = formattedDateTime; // Establecer el texto formateado
      }
    }
  }

  Future<void> insertEvent({
    required String title,
    String? description,
    required DateTime date,
    required String eventType,
  }) async {
    if (animalId.text.isNotEmpty) {
      codeId = animalCreateCtr.animalList
          .firstWhere((animal) => animal.name == animalId.text)
          .id;
    }

    final newEvent = EventEntriesCompanion.insert(
      title: title,
      description:
          description != null ? d.Value(description) : const d.Value.absent(),
      date: date,
      eventType: eventType,
      animalId: codeId != null ? d.Value(codeId) : const d.Value.absent(),
    );

    await database.db.into(database.db.eventEntries).insert(newEvent);
  }

  @override
  void onInit() async {
    selectedDateAppBar = DateTime.now();
    await animalCreateCtr.animalCtr.getAllAnimal();
    await getEventsForDate(selectedDateAppBar);
    super.onInit();
  }

  @override
  void onClose() {
    calendarAgendaControllerAppBar.dispose();
    titleController.dispose();
    descriptionController.dispose();
    animalId.dispose();
    agendaDate.dispose();

    super.onClose();
  }

  back() {
    Get.back();
  }

  void showModal(Widget sheet) {
    Get.bottomSheet(sheet, backgroundColor: Colors.white);
  }

  void createEvent() async {
    try {
      await insertEvent(
        title: titleController.text,
        eventType: typeEvent.value,
        description: descriptionController.text,
        date: agendaDate.text.toDateTime(),
      );

      // Cerrar el modal
      Get.back();

      Get.snackbar(
        'Evento creado',
        'Se ha creado el evento correctamente',
        backgroundColor: Colors.green.shade400,
        colorText: Colors.white,
      );
      // Limpiar los controladores de texto
      clearInputs();

      // Actualizar la lista de eventos para la fecha seleccionada
      getEventsForDate(selectedDateAppBar);
    } catch (e) {
      print(e);
      Get.snackbar('No se podido crear el evento',
          'Error: Hemos tenido un error al crear el evento, intenta de nuevo mas tarde.');
    }

    back();
  }

  void clearInputs() {
    titleController.clear();
    descriptionController.clear();
    animalId.clear();
    agendaDate.clear();
    typeEvent.value = '';
    codeId = null;
  }
}
