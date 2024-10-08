import 'package:get/get.dart';
import 'package:calendar_agenda/calendar_agenda.dart';

class AgendaController extends GetxController {
  final CalendarAgendaController calendarAgendaControllerAppBar =
      CalendarAgendaController();


  late DateTime selectedDateAppBBar;


  onDateSelect(date){
    selectedDateAppBBar = date;
  }

  @override
  void onInit() {
    selectedDateAppBBar = DateTime.now();


    super.onInit();
  }

  @override
  void onClose() {
    calendarAgendaControllerAppBar.dispose();
    super.onClose();
  }
}
