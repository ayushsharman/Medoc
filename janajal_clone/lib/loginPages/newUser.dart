// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class newUser extends StatefulWidget {
  const newUser({super.key});

  @override
  State<newUser> createState() => _newUserState();
}

class _newUserState extends State<newUser> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firtNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _locationController = TextEditingController();

  signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      addUserDetails(
        _firtNameController.text.trim(),
        _lastNameController.text.trim(),
        _emailController.text.trim(),
        int.parse(
          _mobileController.text.trim(),
        ),
        _locationController.text.trim(),
      );
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text("Logged In"),
          content: const Text("Directing to the HomePage"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'homePage');
              },
              child: Container(
                color: Colors.blue[800],
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(14),
                child: const Text(
                  "okay",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    } catch (e) {
      String error = e.toString();
      _showMyDialog(error);
    }
  }

  Future<void> _showMyDialog(String error) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$error'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Kindly enter valid email/password'),
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

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firtNameController.dispose();
    _lastNameController.dispose();
    _mobileController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  Future addUserDetails(String firstName, String lastName, String email,
      int mobile, String location) async {
    await FirebaseFirestore.instance.collection('users').add(
      {
        'first name': firstName,
        'last name': lastName,
        'email': email,
        'mobile': mobile,
        'location': location,
      },
    );
  }

  Position? position;
  List<Placemark>? placemarks;

  getCurrentLocation() async {
    await Geolocator.requestPermission();
    Position newposition = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    position = newposition;
    placemarks = await placemarkFromCoordinates(
      position!.latitude,
      position!.longitude,
    );

    Placemark pMark = placemarks![0];

    String completeAddress =
        '${pMark.subThoroughfare} ${pMark.thoroughfare}, ${pMark.subLocality} ${pMark.locality}, ${pMark.subAdministrativeArea}, ${pMark.administrativeArea} ${pMark.postalCode}, ${pMark.country}';

    _locationController.text = completeAddress;
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
          'Sign Up',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      child: TextField(
                        controller: _firtNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            labelText: 'First Name',
                            hintText: 'Enter your first name'),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      child: TextField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            labelText: 'Last Name',
                            hintText: 'Enter your last name'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: PhysicalModel(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                elevation: 5.0,
                shadowColor: Colors.black,
                child: TextField(
                  controller: _mobileController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      labelText: 'Mobile',
                      hintText: 'Enter your mobile number'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: PhysicalModel(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                elevation: 5.0,
                shadowColor: Colors.black,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      labelText: 'Email',
                      hintText: 'Enter your email address'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: PhysicalModel(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                elevation: 5.0,
                shadowColor: Colors.black,
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: PhysicalModel(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                elevation: 5.0,
                shadowColor: Colors.black,
                child: TextField(
                  controller: _locationController,
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: 'Your current location',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                  getCurrentLocation();
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
                onPressed: () async {
                  await signUp().then(
                    Navigator.pushNamed(context, 'login'),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                  fontSize: 20.0,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Check out our'),
                  TextSpan(
                    text: ' Terms and Conditions',
                    style: TextStyle(
                      color: Colors.blue[400],
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, 'terms');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
