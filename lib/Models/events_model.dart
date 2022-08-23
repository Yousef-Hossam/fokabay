// To parse this JSON data, do
//
//     final events = eventsFromMap(jsonString);

import 'dart:convert';

List<Events> eventsFromMap(String str) =>
    List<Events>.from(json.decode(str).map((x) => Events.fromMap(x)));

String eventsToMap(List<Events> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Events {
  Events(
      {this.id,
      this.eventName,
      this.eventType,
      this.noOfSeats,
      this.minAge,
      this.maxAge,
      this.imageBase64,
      this.monthName,
      this.available,
      this.datetime,
      this.durationHours,
      this.description,
      this.batches});

  int? id;
  String? eventName;
  String? eventType;
  int? noOfSeats;
  int? minAge;
  int? maxAge;
  String? imageBase64;
  String? monthName;
  bool? available;
  String? datetime;
  int? durationHours;
  String? description;
  List<Batch>? batches;

  factory Events.fromMap(Map<String, dynamic> json) => Events(
        id: json["id"] == null ? null : json["id"],
        eventName: json["eventName"] == null ? null : json["eventName"],
        eventType: json["eventType"] == null ? null : json["eventType"],
        noOfSeats: json["noOfSeats"] == null ? null : json["noOfSeats"],
        minAge: json["minAge"] == null ? null : json["minAge"],
        maxAge: json["maxAge"] == null ? null : json["maxAge"],
        imageBase64: json["imageBase64"] == null ? null : json["imageBase64"],
        monthName: json["monthName"] == null ? null : json["monthName"],
        available: json["available"] == null ? null : json["available"],
        datetime: json["datetime"] == null ? null : json["datetime"],
        durationHours:
            json["durationHours"] == null ? null : json["durationHours"],
        description: json["description"] == null ? null : json["description"],
        batches: json["batches"] == null
            ? null
            : List<Batch>.from(json["batches"].map((x) => Batch.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "eventName": eventName == null ? null : eventName,
        "eventType": eventType == null ? null : eventType,
        "noOfSeats": noOfSeats == null ? null : noOfSeats,
        "minAge": minAge == null ? null : minAge,
        "maxAge": maxAge == null ? null : maxAge,
        "imageBase64": imageBase64 == null ? null : imageBase64,
        "monthName": monthName == null ? null : monthName,
        "available": available == null ? null : available,
        "datetime": datetime == null ? null : datetime,
        "durationHours": durationHours == null ? null : durationHours,
        "description": description == null ? null : description,
        "batches": batches == null
            ? null
            : List<dynamic>.from(batches!.map((x) => x.toMap())),
      };
}

class Batch {
  Batch({
    this.ids,
    this.eventId,
    this.noOfAttendances,
    this.datetime,
  });

  int? ids;
  int? eventId;
  int? noOfAttendances;
  String? datetime;

  factory Batch.fromMap(Map<String, dynamic> json) => Batch(
        ids: json["ids"] == null ? null : json["ids"],
        eventId: json["eventId"] == null ? null : json["eventId"],
        noOfAttendances:
            json["noOfAttendances"] == null ? null : json["noOfAttendances"],
        datetime: json["datetime"] == null ? null : json["datetime"],
      );

  Map<String, dynamic> toMap() => {
        "ids": ids == null ? null : ids,
        "eventId": eventId == null ? null : eventId,
        "noOfAttendances": noOfAttendances == null ? null : noOfAttendances,
        "datetime": datetime == null ? null : datetime,
      };
}
