import 'package:flutter/material.dart';

class EventEditingPage extends StatefulWidget {
  final Event? event:
  const EventEditingPage({
    Key? key,
    this.event,}) : super(key: key);

  @override
  State<EventEditingPage> createState() => _EventEditingPageState();
}

class _EventEditingPageState extends State<EventEditingPage> {
 late DateTime fromDate;
 late DateTime toDate;
 
 @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
