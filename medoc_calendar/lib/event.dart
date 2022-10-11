import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Event {
  final String title;
  Event({required this.title});
  String toString() => this.title;
}


/* showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Add Event"),
            content: TextFormField(
              controller: _eventController,
            ),
            actions: [
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  if (_eventController.text.isEmpty) {
                  } else {
                    selectedEvents[selectedDay] = [
                      Event(title: _eventController.text)
                    ];
                  }
                  Navigator.pop(context);
                  _eventController.clear();
                  setState(() {});
                  return;
                },
              ),
              TextButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        child: 
    ); */