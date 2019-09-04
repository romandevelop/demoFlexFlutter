

import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final titulo = Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Text(
          "Acceso",
          style: TextStyle(fontFamily: "Lobster", fontSize: 30.0),
        ));

    final txt1 = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: "Usuario",
          icon: Icon(Icons.perm_identity),
        ),
        style: TextStyle(fontFamily: 'Lobster', color: Colors.grey),
        onChanged: (value) {
        },
      ),
    );

    final txt2 = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Clave",
          icon: Icon(Icons.vpn_key),
        ),
        onChanged: (value) {
        },
        style: TextStyle(fontFamily: 'Lobster', color: Colors.grey),
      ),
    );

    final radio = Flexible(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Wrap(
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          spacing: 10.0,
          runSpacing: 2.0,
          children: <Widget>[
            Radio(
              value: 0,

            ),
            Text("Profesor"),
            Radio(
              value: 1,

            ),
            Text("Alumno"),
            Radio(
              value: 2,

            ),
            Text("Apoderado")
          ],
        ),
      ),
    );

    final button = Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: RaisedButton(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Text('Entrar'),
          textColor: Colors.white,
          color: (Colors.blue),
          onPressed: () {

          }),
    );

    final contenedor = Container(
      margin: EdgeInsets.all(40.0),
      height: 360.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0, //degradado
                offset: Offset(0.0, 7.0) //posision de la sombra
            )
          ]),
      child: Column(
        children: <Widget>[titulo, txt1, txt2, radio, button],
      ),
    );

    return
        (Scaffold(

      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment(-0.0, -1.2),
            children: <Widget>[contenedor],
          )
        ],
      ),
    ));


  }
}