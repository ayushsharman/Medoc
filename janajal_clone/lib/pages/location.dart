import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  State<AddLocation> createState() => _MyDeliveryState();
}

class _MyDeliveryState extends State<AddLocation> {
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _pinCodeController = TextEditingController();

  Future addLocationdetails() async {
    try {
      addUserDetails(
        _addressController.text,
        _cityController.text.trim(),
        _stateController.text.trim(),
        int.parse(_pinCodeController.text.trim()),
      );
    } catch (e) {
      print(e);
    }
  }

  void dispose() {
    _addressController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _pinCodeController.dispose();
    super.dispose();
  }

  Future addUserDetails(
      String address, String city, String state, int pincode) async {
    await FirebaseFirestore.instance.collection('users').add(
      {
        'address': address,
        'city': city,
        'state': state,
        'pincode': pincode,
      },
    );
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
          "Add your location",
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
              controller: _addressController,
              decoration: InputDecoration(
                  icon: Icon(Icons.add_location),
                  labelText: 'Address',
                  hintText: 'Enter your address'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: _cityController,
              decoration: InputDecoration(
                  icon: Icon(Icons.location_city),
                  labelText: 'City',
                  hintText: 'Enter your city'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: _stateController,
              decoration: InputDecoration(
                  icon: Icon(Icons.flag),
                  labelText: 'State',
                  hintText: 'Enter your state'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: _pinCodeController,
              decoration: InputDecoration(
                  icon: Icon(Icons.pin),
                  labelText: 'Pincode',
                  hintText: 'Enter your Pincode'),
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
              onPressed: () {
                addLocationdetails();
              },
              child: Text(
                'Add Location',
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
