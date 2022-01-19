import "package:flutter/material.dart";
import 'package:flutter_application_1_scratch/widgets/drawer.dart';
import 'package:flutter_application_1_scratch/widgets/item_widget.dart';
import 'package:flutter_application_1_scratch/models/catalog.dart';

import 'package:google_fonts/google_fonts.dart';

class Homepgae extends StatelessWidget {
  const Homepgae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = "Vaibhav";
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
