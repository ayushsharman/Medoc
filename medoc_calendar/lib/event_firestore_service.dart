import 'package:firebase_helpers/firebase_helpers.dart';
import 'package:medoc_calendar/app_event.dart';

class AppDBConstants {
  static const String eventsCollection = "events";
}

final eventDBS = DatabaseService<AppEvent>(
  AppDBConstants.eventsCollection,
  fromDS: (id, data) => AppEvent.fromDS(id, data!),
  toMap: (event) => event.toMap(),
);
