import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtechviral/models/catlog.dart';

class HomeWidget extends StatefulWidget {
  final Item item;

  const HomeWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catlogjson = await rootBundle.loadString("assests/Files/catlog.json");
    var decodeddata = jsonDecode(catlogjson);
    var data = decodeddata['products'];
    CatlogModel.items =
        List.from(data).map<Item>((items) => Item.fromMap(items)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.green[300],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          onTap: () {
            print("${widget.item.name}Pressed");
          },
          leading: Image.network(widget.item.imageurl),
          title: Text(
            widget.item.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            widget.item.desc,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            "\$${widget.item.price}",
            textScaleFactor: 1.60,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
