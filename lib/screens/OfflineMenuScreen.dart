import 'package:flutter/material.dart';


class OfflineMenuScreen extends StatelessWidget {
  Widget buildButton(BuildContext context, String text) {
    return FlatButton(
        color: Theme.of(context).primaryColor,
        textColor: Colors.black54,
        onPressed: () {},
        child: Text(text),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Hauptmenü - Singleplayer",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: <Widget>[
                Image.asset("logo.jpeg"),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Text("ERKLÄRUNG DES SPIELS"),
                ),
                SizedBox(
                  height: 100,
                ),
                SizedBox(height: 25),
                buildButton(context, "Spiel starten"),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Text("HIGHSCORE"),
                ),
                  SizedBox(
                  height: 25,
                ),
                buildButton(context, "Online spielen"),
              ],
            )));
  }
}
