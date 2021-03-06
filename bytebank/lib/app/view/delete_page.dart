import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  @override
  _DeletePageState createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  final TextEditingController _idnumber = TextEditingController();
  final ContactDao _dao = ContactDao();

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
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _idnumber, //controler do account
                decoration: InputDecoration(labelText: "Id Number"),
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
                    final int idNumber = int.tryParse(_idnumber.text);
                    _dao
                        .delete(idNumber)
                        .then((id) => Navigator.of(context).pushNamed("/"));
                  },
                  child: Text("Delete"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
