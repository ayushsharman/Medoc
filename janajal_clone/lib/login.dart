// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:janajal_clone/pages/home.dart';
import 'package:janajal_clone/newUser.dart';

class loginPage extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<loginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(child: Image.asset('assets/download.jpg')),
              ),
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
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
            ),
            SizedBox(
              height: 40,
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
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.blue[800],
                    ),
                    onPressed: () => signIn(),
                    // {
                    //   Navigator.pushNamed(context, 'homePage');
                    // },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'homePage');
                      },
                      child: Text(
                        'Login Via OTP',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '-OR-',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/google.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/facebook.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                  fontSize: 20.0,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'New User?'),
                  TextSpan(
                    text: ' Sign Up!',
                    style: TextStyle(
                      color: Colors.blue[400],
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => newUser(),
                          ),
                        );
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
