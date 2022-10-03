import 'package:flutter/material.dart';
import 'package:medoc_calendar/event.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

Widget Eventslist() {
  return Card(
    child: Text(
      "Title",
      style: TextStyle(fontSize: 18),
    ),
    margin: EdgeInsets.symmetric(),
    color: Colors.red,
  );
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();

  Map<DateTime, List<Event>> selectedEvents = {};
  @override
  void initState() {
    super.initState();
    selectedEvents = {};
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 87, 118),
        title: Text("MEDOC Calendar"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Eventslist(),
              ],
            ),
          ),
          Expanded(
            child: TableCalendar(
              focusedDay: selectedDay,
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.monday,
              daysOfWeekVisible: true,
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
              eventLoader: _getEventsfromDay,
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                todayDecoration: BoxDecoration(
                  color: Color.fromARGB(255, 69, 197, 219),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                defaultDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0)),
                weekendDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0)),
                outsideDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0)),
                selectedDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 87, 118),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0)),
                selectedTextStyle: TextStyle(color: Colors.white),
              ),
              headerStyle: HeaderStyle(
                formatButtonDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 69, 197, 219),
                    borderRadius: BorderRadius.circular(10.0)),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                titleCentered: true,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
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
                    Navigator.pop(context);
                    return;
                  }
                },
              ),
              TextButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color.fromARGB(255, 31, 87, 118),
      ),
    );
  }
}
