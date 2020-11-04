import 'package:flutter/material.dart';
import 'app/view/contact.dart';
import 'app/view/home_page.dart';
import 'app/view/new_contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green[900],
          textTheme: ButtonTextTheme.primary,
        ),
        primaryColor: Colors.green[900],
        backgroundColor: Colors.green[100],
        accentColor: Colors.green,
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/newContact": (context) => NewContact(),
        "/contact": (context) => Contact(),
      },
    );
  }
}
