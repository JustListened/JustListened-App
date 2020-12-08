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
          children: <Widget>[
            // LOGO DO APP
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/preLogin/backgroundImage.jpg'), 
                  fit: BoxFit.cover,
                  // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop)
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height/1.3,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: (){},
                  child: Text("Entrar com o Aplicativo", style: TextStyle(fontSize: 20)),
                  // icon: Icon(Icons.golf_course),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text("Entrar com o Google", style: TextStyle(fontSize: 20)),
                  icon: SvgPicture.asset(
                    'assets/preLogin/google-icon.svg',
                    height: 20,
                    width: 20
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text("Entrar com o Spotify", style: TextStyle(fontSize: 20, color: Colors.green)),
                  icon: SvgPicture.asset(
                    'assets/preLogin/spotify-icon.svg',
                    height: 20,
                    width: 20
                  ),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ]
        )
      )
    );
  }
}
