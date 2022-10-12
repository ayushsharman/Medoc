import 'package:flutter/material.dart';
import 'package:medoc_calendar/event.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 87, 118),
        title: Text("MEDOC Calendar"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.all(8),
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEvent()),
          );
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color.fromARGB(255, 31, 87, 118),
      ),
    );
  }
}
