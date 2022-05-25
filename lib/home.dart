import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Tracer Study Almuni"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.redAccent, Colors.amberAccent])),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, right: 10.0, left: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 500,
                height: 300,
                child: Image(
                  image: AssetImage("assets/Universitas-Esa-Unggul.jpg"),
                ),
              ),
              Text(
                "Selamat Datang di e-Tracer Study Almuni Universitas Esa Unggul",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Rubik",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
