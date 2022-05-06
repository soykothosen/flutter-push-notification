import 'package:flutter/material.dart';
import 'package:flutterapp/function/notification.dart';
import 'package:flutterapp/screens/start_screen.dart';


void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      initialRoute: '/startscreen',

      routes: {

        '/startscreen': (context) => StartScreen(),

      },

    );
  }
}

