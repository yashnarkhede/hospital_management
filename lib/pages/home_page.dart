import 'package:hospital_management/widget/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          title: Text("Hospital Management App"),
        ),
        drawer: NavDrawer(),
        body: Center(child: Text("This is Home page")));
  }
}
