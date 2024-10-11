import 'package:admin_animal_flutter/controllers/agenda_controller.dart';
import 'package:admin_animal_flutter/extension/date_time_extension.dart';
import 'package:admin_animal_flutter/widgets/animal_search_field.dart';
import 'package:admin_animal_flutter/widgets/custom_dropdown.dart';
import 'package:admin_animal_flutter/widgets/drawer_nav.dart';
import 'package:admin_animal_flutter/widgets/event_list.dart';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    var agendaCtr = Get.put(AgendaController());

    return Scaffold(
        drawer: const DrawerNav(),
        appBar: CalendarAgenda(
          backgroundColor: Colors.green.shade300,
          fullCalendarScroll: FullCalendarScroll.horizontal,
          fullCalendarDay: WeekDay.long,
          selectedDateColor: Colors.green.shade900,
          controller: agendaCtr.calendarAgendaControllerAppBar,
          appbar: true,
          selectedDayPosition: SelectedDayPosition.right,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: agendaCtr.back,
          ),
          initialDate: agendaCtr.selectedDateAppBar,
          firstDate: DateTime.now().subtract(const Duration(days: 140)),
          lastDate: DateTime.now().add(const Duration(days: 60)),
          onDateSelected: agendaCtr.onDateSelect,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green.shade600,
          onPressed: () =>
              agendaCtr.showModal(_createEventModal(context, agendaCtr)),
          child: const Icon(
            Icons.add_circle,
            color: Colors.white,
          ),
        ),
        body: Obx(() {
          if (agendaCtr.isLoading.value) {
            return const CircularProgressIndicator();
          }
          if (agendaCtr.events.isNotEmpty) {
            return ListView.builder(
                itemBuilder: (context, index) {
                  final event = agendaCtr.events[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EventTile(
                      title: event.title,
                      time: event.date.formatTime(),
                      description: event.description,
                    ),
                  );
                },
                itemCount: agendaCtr.events.length);
          }
          return const Center(
            child: Wrap(
              runSpacing: 16,
              alignment: WrapAlignment.center,
              direction: Axis.vertical,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(
                  Icons.event,
                  size: 64,
                ),
                Text(
                  "No hay eventos",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          );
        }));
  }

  Widget _createEventModal(BuildContext context, AgendaController agendaCtr) {
    return Container(
        height: 500,
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        child: Wrap(runSpacing: 16, children: [
          Text(
            "Que evento quieres crear?",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey.shade900),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: agendaCtr.titleController,
            decoration: const InputDecoration(
              labelText: 'Nombre del Evento',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: agendaCtr.descriptionController,
            decoration: InputDecoration(
              counterText: "${agendaCtr.descriptionController.text.length}/100",
              labelText: 'descripcion del Evento',
              border: const OutlineInputBorder(),
            ),
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: context.mediaQuerySize.width * 0.4,
                child: CustomDropdown(
                      label: 'Tipo de Evento',
                      value: agendaCtr.typeEvent.value.isEmpty
                          ? null
                          : agendaCtr.typeEvent.value,
                      items: agendaCtr.listEvents,
                      onChanged: (String? newValue) {
                        agendaCtr.setTypeEvent(newValue!);
                      },
                    )),
              SizedBox(
                width: context.mediaQuerySize.width * 0.4,
                child: TextField(
                  controller: agendaCtr.agendaDate,
                  decoration: const InputDecoration(
                    labelText: 'Seleccionar dia',
                    border: OutlineInputBorder(),
                  ),
                  readOnly: true,
                  onTap: () => agendaCtr.selectDateTime(context),
                ),
              ),
            ],
          ),
          AnimalSearchField(
            label: "Buscar nombre del animal ",
            searchFunction: agendaCtr.animalCreateCtr.searchAnimal,
            selectedAnimal: agendaCtr.animalId,
            onAnimalSelect: (selectedAnimal) {
              agendaCtr.selectAnimal(selectedAnimal);
            },
            filteredList: agendaCtr.animalCreateCtr.filteredList,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: FilledButton(
                onPressed: agendaCtr.createEvent,
                child: const Text("Crear evento")),
          )
        ]));
  }
}
