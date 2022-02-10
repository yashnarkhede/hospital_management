import 'package:hospital_management/main.dart';
import 'package:hospital_management/pages/bookAppointmnet.dart';

import 'package:hospital_management/pages/home_page.dart';

import 'package:flutter/material.dart';
import 'package:hospital_management/pages/prescription_page.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Hospital Management",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Home"),
            leading: IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Home(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Prescription"),
            leading: IconButton(
              icon: Icon(Icons.info_outlined),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Prescription()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Book Appointment"),
            leading: IconButton(
              icon: Icon(Icons.people_alt_outlined),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => BookAppointment()));
            },
          ),
          // Divider(
          //   color: Colors.grey,
          // ),
          // ListTile(
          //   title: Text("Our Work"),
          //   leading: IconButton(
          //     icon: Icon(Icons.work_outline_outlined),
          //     onPressed: () {},
          //   ),
          //   onTap: () {
          //     Navigator.of(context).pop();
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (BuildContext context) => OurWork()));
          //   },
          // ),
          
        ],
      ),
    );
  }
}
