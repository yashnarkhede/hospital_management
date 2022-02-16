import 'package:hospital_management/pages/home_page.dart';
import 'package:hospital_management/widget/drawer.dart';
import 'package:flutter/material.dart';
import './pages/Login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Page(),
    );
    drawer:
    NavDrawer();
  }
}
