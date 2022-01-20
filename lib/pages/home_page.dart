import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1_scratch/widgets/drawer.dart';
import 'package:flutter_application_1_scratch/widgets/item_widget.dart';
import 'package:flutter_application_1_scratch/models/catalog.dart';

import 'package:google_fonts/google_fonts.dart';

class Homepgae extends StatefulWidget {
  const Homepgae({Key? key}) : super(key: key);

  @override
  State<Homepgae> createState() => _HomepgaeState();
}

class _HomepgaeState extends State<Homepgae> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString('assets/files/catalog.json');
  }

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
