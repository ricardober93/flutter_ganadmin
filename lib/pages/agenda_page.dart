import 'package:admin_animal_flutter/controllers/agenda_controller.dart';
import 'package:admin_animal_flutter/widgets/Drawer.dart';
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
            onPressed: () {},
          ),
          initialDate: DateTime.now(),
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
            child: Text("Today, appbar = true"),
          )
        ])));
  }
}
