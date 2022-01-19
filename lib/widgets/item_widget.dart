import 'package:flutter/material.dart';
import 'package:flutter_application_1_scratch/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} tapped!");
        },
        title: Text(item.name),
        subtitle: Text(item.desc),
        leading: Image.network(item.image),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
              color: Colors.blueAccent[400], fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
