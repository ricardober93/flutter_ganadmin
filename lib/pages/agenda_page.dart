import 'package:admin_animal_flutter/controllers/agenda_controller.dart';
import 'package:admin_animal_flutter/widgets/animal_search_field.dart';
import 'package:admin_animal_flutter/widgets/custom_dropdown.dart';
import 'package:admin_animal_flutter/widgets/drawer_nav.dart';
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
        initialDate: agendaCtr.selectedDateAppBBar,
        firstDate: DateTime.now().subtract(const Duration(days: 140)),
        lastDate: DateTime.now().add(const Duration(days: 60)),
        onDateSelected: agendaCtr.onDateSelect,
      ),
      body: Center(
          child: Column(children: [
        ElevatedButton(
          onPressed: () {
            agendaCtr.calendarAgendaControllerAppBar.goToDay(DateTime.now());
          },
          child: const Text("Today, appbar = true"),
        )
      ])),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade600,
        onPressed: () =>
            agendaCtr.showModal(_createEventModal(context, agendaCtr)),
        child: const Icon(
          Icons.add_circle,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _createEventModal(BuildContext context, AgendaController agendaCtr) {
    return Container(
        height: 450,
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        child: Wrap(spacing: 16, runSpacing: 16, children: [
          Text(
            "Que evento quieres crear?",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade900),
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
          CustomDropdown(
            label: 'Tipo de Evento',
            value: agendaCtr.typeEvent.value.isEmpty
                ? null
                : agendaCtr.typeEvent.value,
            items: agendaCtr.listEvents,
            onChanged: (String? newValue) {
              agendaCtr.setTypeEvent(newValue!);
            },
          ),
          AnimalSearchField(
            label: "Buscar nombre de la madre animal ",
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
