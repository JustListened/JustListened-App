import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PreLoginPage extends StatefulWidget {

  @override
  _PreLoginPageState createState() => _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor('#172957'),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // LOGO DO APP
            Container(width: 300, height: 300, color: Colors.black,),
            Column(
              children: <Widget>[
                Container(),
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text("Entrar com o Google", style: TextStyle(fontSize: 20)),
                  icon: Icon(Icons.golf_course)
                ),
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text("Entrar com o Google", style: TextStyle(fontSize: 20)),
                  icon: Icon(Icons.golf_course)
                ),
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text("Entrar com o Google", style: TextStyle(fontSize: 20)),
                  icon: Icon(Icons.golf_course)
                )
              ],
            ),
          ]
        )
      )
    );
  }
}
