import 'package:flutter/cupertino.dart';
import 'package:fokabay/Models/events_model.dart';
import 'package:fokabay/Models/register_workshop.dart';
import 'package:fokabay/Network/get_dio.dart';
import 'package:fokabay/Repository/workshop_services.dart';
import 'package:intl/intl.dart';

class WorkShopProvider extends ChangeNotifier {
  WorkShopServices workShopServices = new WorkShopServices(GetDio().getDio());

  List<Events> listWorkshops = [];
  late Events events;
  DateFormat dateFormat = new DateFormat('dd-MM-yyyy hh:mm a');

  Future getAllEvents() async {
    return await workShopServices.getWorkShops().then((value) async {
      if (value.statusCode == 200) {
        listWorkshops =
            List<Events>.from(value.data.map((x) => Events.fromMap(x)));
        listWorkshops.sort((a, b) => a.datetime!.compareTo(b.datetime!));
        listWorkshops.removeWhere((element) =>
            int.parse(DateFormat("dd")
                .format(dateFormat.parse(element.datetime.toString()))) <
            DateTime.now().day);
        notifyListeners();
        return listWorkshops;
      } else {
        return [];
      }
    }).catchError((error) {
      throw error.toString();
    });
  }

  setSelectedEvent(selectedEventValue) {
    events = selectedEventValue;
    notifyListeners();
  }

  Future userWorkshopRegister(RegisterWorkshop registerWorkshop) async {
    return await workShopServices
        .userRegisterWorkshop(registerWorkshop)
        .then((value) async {
      if (value.statusCode == 200) {
        return value;
      } else {
        return 'Error';
      }
    }).catchError((error) {
      throw error.toString();
    });
  }
}
