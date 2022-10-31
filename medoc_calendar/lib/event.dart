import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final _formkey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event'),
        backgroundColor: Color.fromARGB(255, 31, 87, 118),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.clear_all_rounded,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState?.save();
                  final data =
                      Map<String, dynamic>.from(_formkey.currentState!.value);
                  data['date'] = (data['data']?.millisecondsSinceEpoch) ?? 0;
                  print(data);
                }
              },
              child: Text(
                "Save",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    backgroundColor: Colors.transparent),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 31, 87, 118),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          FormBuilder(
              key: _formkey,
              child: Column(
                children: [
                  FormBuilderTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Field can not be empty';
                      }
                    },
                    name: "Title",
                    decoration: InputDecoration(
                        hintText: "Add Title of the event",
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(8)),
                  ),
                  Divider(),
                  FormBuilderTextField(
                    name: "Description",
                    maxLines: 5,
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: "Add Description of the event",
                      prefixIcon: Icon(Icons.short_text),
                    ),
                  ),
                  Divider(),
                  FormBuilderSwitch(
                    name: "Public",
                    title: Text("Public"),
                    initialValue: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                  Divider(),
                  FormBuilderDateTimePicker(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    name: "Date",
                    initialValue: DateTime.now(),
                    fieldHintText: "Add Date",
                    inputType: InputType.date,
                    format: DateFormat('EEEE, dd MMMM, yyyy'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.calendar_today_sharp),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
