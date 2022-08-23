// To parse this JSON data, do
//
//     final registerWorkshop = registerWorkshopFromMap(jsonString);

import 'dart:convert';

RegisterWorkshop registerWorkshopFromMap(String str) =>
    RegisterWorkshop.fromMap(json.decode(str));

String registerWorkshopToMap(RegisterWorkshop data) =>
    json.encode(data.toMap());

class RegisterWorkshop {
  RegisterWorkshop({this.customer, this.eventId, this.eventBatchId});

  Customer? customer;
  int? eventId;
  int? eventBatchId;

  factory RegisterWorkshop.fromMap(Map<String, dynamic> json) =>
      RegisterWorkshop(
        customer: json["customer"] == null
            ? null
            : Customer.fromMap(json["customer"]),
        eventId: json["EventId"] == null ? null : json["EventId"],
        eventBatchId:
            json["EventBatchId"] == null ? null : json["EventBatchId"],
      );

  Map<String, dynamic> toMap() => {
        "customer": customer == null ? null : customer!.toMap(),
        "EventId": eventId == null ? null : eventId,
        "EventBatchId": eventBatchId == null ? null : eventBatchId,
      };
}

class Customer {
  Customer({
    this.firstName,
    this.lastName,
    this.mobileNumber,
    this.unitNumber,
    this.email,
    this.noOfAttendancies,
    this.attendeesNames,
  });

  String? firstName;
  String? lastName;
  int? mobileNumber;
  String? unitNumber;
  String? email;
  int? noOfAttendancies;
  String? attendeesNames;

  factory Customer.fromMap(Map<String, dynamic> json) => Customer(
        firstName: json["firstName"] == null ? null : json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        mobileNumber:
            json["mobilenumber"] == null ? null : json["mobilenumber"],
        unitNumber: json["unitNumber"] == null ? null : json["unitNumber"],
        email: json["email"] == null ? null : json["email"],
        noOfAttendancies:
            json["noOfAttendancies"] == null ? null : json["noOfAttendancies"],
        attendeesNames:
            json["attendeesNames"] == null ? null : json["attendeesNames"],
      );

  Map<String, dynamic> toMap() => {
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "mobilenumber": mobileNumber == null ? null : mobileNumber,
        "unitNumber": unitNumber == null ? null : unitNumber,
        "email": email == null ? null : email,
        "noOfAttendancies": noOfAttendancies == null ? null : noOfAttendancies,
        "attendeesNames": attendeesNames == null ? null : attendeesNames,
      };
}
