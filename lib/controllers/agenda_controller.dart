import 'package:get/get.dart';
import 'package:calendar_agenda/calendar_agenda.dart';

class AgendaController extends GetxController {
  final CalendarAgendaController calendarAgendaControllerAppBar =
      CalendarAgendaController();
  final CalendarAgendaController calendarAgendaControllerNotAppBar =
      CalendarAgendaController();

  late DateTime _selectedDateAppBBar;
  late DateTime _selectedDateNotAppBBar;


  onDateSelect(date){
    _selectedDateAppBBar = date;
  }

  @override
  void onInit() {
    _selectedDateAppBBar = DateTime.now();
    _selectedDateNotAppBBar = DateTime.now();

    super.onInit();
  }

  @override
  void onClose() {
    calendarAgendaControllerAppBar.dispose();
    calendarAgendaControllerNotAppBar.dispose();
    super.onClose();
  }
}
