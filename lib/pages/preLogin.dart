import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class PreLoginPage extends StatefulWidget {

  @override
  _PreLoginPageState createState() => _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // LOGO DO APP
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/preLogin/background.jpg'), 
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop)
                ),
              ),
            ),
            Column(
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text("Entrar com o Google", style: TextStyle(fontSize: 20)),
                  icon: SvgPicture.asset(
                    'assets/preLogin/google-icon.svg',
                    height: 20,
                    width: 20
                  ),
                  color: Colors.white
                ),
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text("Entrar com o Spotify", style: TextStyle(fontSize: 20)),
                  icon: SvgPicture.asset(
                    'assets/preLogin/spotify-icon.svg',
                    height: 20,
                    width: 20
                  ),
                  color: Colors.white
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
