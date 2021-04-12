import 'package:flutter/material.dart';
import 'package:mtechviral/models/catlog.dart';
import 'package:mtechviral/widgets/home_item_widget.dart';

class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatlogModel.items.length,
      itemBuilder: (ctx, i) => HomeWidget(
        item: CatlogModel.items[i],
      ),
    );
  }
}
