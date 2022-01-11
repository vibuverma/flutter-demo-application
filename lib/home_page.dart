import "package:flutter/material.dart";

class Homepgae extends StatelessWidget {
  const Homepgae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = "Vaibhav";
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Center(
        child: Container(
          child: Text("${name} welcome to Flutter! "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
