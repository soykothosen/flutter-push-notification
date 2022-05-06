import 'package:flutter/material.dart';
import 'package:flutterapp/function/notification.dart';


class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Push notification"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  onPressed: () async {



                    sendNotification(title: "Title");
              },
                child: Text("Show Push Notification"),
              ),
              RaisedButton(
                onPressed: (){
                },
                child: Text("Schdule Push Notification"),
              ),
              RaisedButton(
                onPressed: (){
                },
                child: Text("Remove Push Notification"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
