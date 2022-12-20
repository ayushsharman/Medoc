import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class MyDelivery extends StatefulWidget {
  const MyDelivery({Key? key}) : super(key: key);

  @override
  State<MyDelivery> createState() => _MyDeliveryState();
}

class _MyDeliveryState extends State<MyDelivery> {
  late SingleValueDropDownController _cnt;
  TextEditingController dateInput = TextEditingController();

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thank You!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Your Order has been placed!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    dateInput.text = "";
    super.initState();
  }

  void dispose() {
    _cnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueGrey[600],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Order",
          style: TextStyle(
            color: Colors.blueGrey[600],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.water_drop),
                  labelText: 'Quantity',
                  hintText: 'Enter Water amount in litres'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: dateInput,
              //editing controller of this TextField
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today), //icon of text field
                  labelText: "Enter Date" //label text of field
                  ),
              readOnly: true,
              //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2100));

                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  setState(() {
                    dateInput.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {}
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: DropDownTextField(
              textFieldDecoration: InputDecoration(
                icon: Icon(Icons.watch_later),
                hintText: "Select Delivery Window",
              ),
              controller: _cnt,
              clearOption: true,
              enableSearch: true,
              validator: (value) {
                if (value == null) {
                  return "Required field";
                } else {
                  return null;
                }
              },
              dropDownItemCount: 5,
              dropDownList: const [
                DropDownValueModel(name: '7 AM - 9 AM', value: "7-9"),
                DropDownValueModel(name: '9 AM - 11 AM', value: "9-11"),
                DropDownValueModel(name: '11 AM - 2 PM', value: "11-2"),
                DropDownValueModel(name: '2 PM - 5 PM', value: "2-5"),
                DropDownValueModel(name: '5 PM - 7 PM', value: "5-7"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 5.0,
                shadowColor: Colors.black,
                backgroundColor: Colors.blue[800],
              ),
              onPressed: _showMyDialog,
              child: Text(
                'Place Order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
