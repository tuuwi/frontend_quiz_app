import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
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
        borderRadius: new BorderRadius.circular(10))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.green,
        ),
        body: Container(
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: <Widget>[
                Image.asset("logo.jpeg"),
                SizedBox(height: 10),
                buildTextfield(context, "Nutzername"),
                buildTextfield(context, "Passwort"),
                SizedBox(height: 40),
                buildButton(context, "Einloggen"),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildButton(context, "Registrieren"),
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
