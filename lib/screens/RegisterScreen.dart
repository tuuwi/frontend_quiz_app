import "package:flutter/material.dart";

class RegisterScreen extends StatelessWidget {
  Widget buildTextfield(BuildContext context, String text) {
    return Container(
        width: 200,
        child: TextField(
          decoration: InputDecoration(
            hintText: text,
          ),
        ));
  }

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
          title: Text("Registration"),
          backgroundColor: Colors.green,
        ),
        body: Container(
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: <Widget>[
                Image.asset("logo.jpeg"),
                SizedBox(height: 25),
                buildTextfield(context, "Nutzername"),
                buildTextfield(context, "Passwort"),
                buildTextfield(context, "Passwort wiederholen"),
                SizedBox(height: 40),
                buildButton(context, "Registrieren"),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildButton(context, "Einloggen"),
                    SizedBox(
                      width: 10,
                    ),
                    buildButton(context, "Offline-Modus"),
                  ],
                )
              ],
            )));
  }
}
