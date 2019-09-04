import 'package:demo_flex/login.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginView();
  }
}


class _LoginView extends State<LoginView>{
  @override
  Widget build(BuildContext context) {

    var fila = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.lightBlue,
            child: Center(),
          ), ),
        Expanded(
          flex: 3,
          child: Container(

            child: Login(),
          ), ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.lightBlue,
            child: Center(),
          ), ),

      ], );

    return fila;
  }
}