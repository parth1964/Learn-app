import 'package:flutter/material.dart';
import 'package:mtechviral/pages/homepage_screen/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Parth Ramanuj";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Data New",
          style: TextStyle(fontSize: 25),
        ),
      ),
      drawer: DrawerScreen(),
    );
  }
}
