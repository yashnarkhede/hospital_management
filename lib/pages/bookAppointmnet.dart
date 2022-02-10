import 'package:hospital_management/widget/drawer.dart';
import 'package:flutter/material.dart';

class BookAppointment extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("Book Appointment"),
        ),
        drawer: NavDrawer(),
        body: Center(child: Text("This is Appointment page")));
  }
}
