// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pres_id = "XXXXXXXX";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Color.fromARGB(255, 54, 91, 109),
              minWidth: 100,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Medoc"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.calendar_month),
                  label: Text("Medoc"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.help),
                  label: Text("Medoc"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.chat),
                  label: Text("Medoc"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text("Medoc"),
                ),
              ],
              selectedIndex: 0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Color.fromARGB(255, 54, 91, 109),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prescription ID: " + pres_id,
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        TabBar(
                          tabs: [
                            Tab(
                              text: "Patient details",
                            ),
                            Tab(
                              text: "Medicine",
                            ),
                            Tab(
                              text: "Lab Reports",
                            ),
                            Tab(
                              text: "Family",
                            ),
                            Tab(
                              text: "Daily Health",
                            ),
                            Tab(
                              text: "Special Notes",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      Text("Hello"),
                      Text("Hello"),
                      Text("Hello"),
                      Text("Hello"),
                      Text("Hello"),
                      Text("Hello"),
                    ]),
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
