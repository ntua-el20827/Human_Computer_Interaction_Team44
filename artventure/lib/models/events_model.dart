import 'dart:convert';

Events eventsFromMap(String str) => Events.fromMap(json.decode(str));

String eventsToMap(Events data) => json.encode(data.toMap());

class Events {
  final int? eventId;
  final String title;
  final String category;
  final String location;
  final String infoText;
  final String eventCreator;

  Events({
    this.eventId,
    required this.title,
    required this.category,
    required this.location,
    required this.infoText,
    required this.eventCreator,
  });

  factory Events.fromMap(Map<String, dynamic> json) => Events(
        eventId: json["eventId"],
        title: json["title"],
        category: json["category"],
        location: json["location"],
        infoText: json["infoText"],
        eventCreator: json["eventCreator"],
      );

  Map<String, dynamic> toMap() => {
        "eventId": eventId,
        "title": title,
        "category": category,
        "location": location,
        "infoText": infoText,
        "eventCreator": eventCreator,
      };
}