import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text("Contacts"),
      ),
      body: ListView(
        children: [
          Card(child: ListTile(title: Text("Murilo"), subtitle: Text("105"))),
        ],
      ),
    );
  }
}
