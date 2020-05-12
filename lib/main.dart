import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora de IMC"),
          centerTitle: true,
          backgroundColor: Colors.purple,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(Icons.person_outline, size: 120.0, color: Colors.purple),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Seu Peso (kg)",
                      labelStyle: TextStyle(color: Colors.purple)),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple, fontSize: 25.0),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Sua Altura (cm)",
                      labelStyle: TextStyle(color: Colors.purple)),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple, fontSize: 25.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Calcular",
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        color: Colors.purple,
                      )),
                ),
                Text(
                  "Info",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple, fontSize: 25.0),
                )
              ]),
        ));
  }
}
