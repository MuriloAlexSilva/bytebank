import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  @override
  _NewContactState createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  //Controllers para salvar o nome e conta
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text("New Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController, //controller do name
              decoration: InputDecoration(labelText: "Full Name"),
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _accountNumberController, //controler do account
                decoration: InputDecoration(labelText: "Account Number"),
                style: TextStyle(fontSize: 20),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width:
                    double.maxFinite, //Para ocupar o maximo da largura da tela
                child: RaisedButton(
                  onPressed: () {
                    final String name = _nameController.text;
                    final int accountNumber =
                        int.tryParse(_accountNumberController.text);
                    final Contact newContact = Contact(name, accountNumber);
                    Navigator.pop(context, newContact);
                  },
                  child: Text("Create"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
