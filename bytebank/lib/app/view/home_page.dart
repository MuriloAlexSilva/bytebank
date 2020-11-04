import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: Text("Dashboard"),
        ),
        //O SizedBox seria para tornar a tela responsiva
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/bytebank_logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  //Deverá ser colocado o InkWell dentro do materil e a cor também , para conseguirmos realizar a sensação de click
                  color: Theme.of(context).primaryColor,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/contact");
                    },
                    child: Container(
                      height: 120,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.people,
                            color: Colors.white,
                          ),
                          Text(
                            "Contacts",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/newContact");
          },
          child: Icon(Icons.add),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
