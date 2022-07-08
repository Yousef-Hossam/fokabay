import 'package:flutter/cupertino.dart';
import 'package:fokabay/Models/events_model.dart';
import 'package:fokabay/Network/get_dio.dart';
import 'package:fokabay/Repository/workshop_services.dart';

class WorkShopProvider extends ChangeNotifier {
  WorkShopServices workShopServices = new WorkShopServices(GetDio().getDio());

  List<Events> listWorkshops = [];
  late Events events;

  Future getAllEvents() async {
    return await workShopServices.getWorkShops().then((value) async {
      if (value.statusCode == 200) {
        listWorkshops =
            List<Events>.from(value.data.map((x) => Events.fromMap(x)));
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
}
