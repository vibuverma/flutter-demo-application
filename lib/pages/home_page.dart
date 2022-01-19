import "package:flutter/material.dart";
import 'package:flutter_application_1_scratch/widgets/drawer.dart';
import 'package:flutter_application_1_scratch/widgets/item_widget.dart';
import 'package:flutter_application_1_scratch/models/catalog.dart';

import 'package:google_fonts/google_fonts.dart';

class Homepgae extends StatelessWidget {
  const Homepgae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
