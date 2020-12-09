import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:just_listened/constants/colors.constants.dart';
import 'package:just_listened/constants/text.constants.dart';
import 'package:just_listened/utils/widgets.utils.dart';

class PreLoginPage extends StatefulWidget {

  @override
  _PreLoginPageState createState() => _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                  height: MediaQuery.of(context).size.height/1.5,
                  margin: EdgeInsets.only(bottom: 24),
                ),
                Column(
                  children: <Widget>[
                    RaisedButton.icon(
                      padding: EdgeInsets.all(12),
                      onPressed: (){},
                      label: Text(LOGIN_WITH_EMAIL, style: TextStyle(fontSize: 20)),
                      icon: Icon(Icons.login),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    AppSpacer(height: 16),
                    RaisedButton.icon(
                      padding: EdgeInsets.all(12),
                      onPressed: (){},
                      label: Text(LOGIN_WITH_GOOGLE, style: TextStyle(fontSize: 20)),
                      icon: SvgPicture.asset(
                        'assets/preLogin/google-icon.svg',
                        height: 24,
                        width: 24
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    AppSpacer(height: 16),
                    RaisedButton.icon(
                      padding: EdgeInsets.all(12),
                      onPressed: (){},
                      label: Text(LOGIN_WITH_SPOTIFY, style: TextStyle(fontSize: 20, color: kSuccessColor)),
                      icon: SvgPicture.asset(
                        'assets/preLogin/spotify-icon.svg',
                        height: 24,
                        width: 24
                      ),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ],
                ),
              ]
            )
          ),
        )
      ),
    );
  }
}
