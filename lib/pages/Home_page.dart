import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtechviral/models/catlog.dart';
import 'package:mtechviral/widgets/drawer.dart';
import 'package:mtechviral/widgets/home_item_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    var catlogjson = await rootBundle.loadString("assests/Files/catlog.json");
    var decodeddata = jsonDecode(catlogjson);
    var data = decodeddata['products'];
    CatlogModel.items =
        List.from(data).map<Item>((item) => Item.fromJson(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (CatlogModel.items != null && CatlogModel.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: CatlogModel.items.length,
                  itemBuilder: (context, index) => HomeItem(
                    item: CatlogModel.items[index],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  ),
                )),
      drawer: DrawerScreen(),
    );
  }
}
