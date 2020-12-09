import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:just_listened/constants/colors.constants.dart';
import 'package:just_listened/constants/text.constants.dart';
import 'package:just_listened/pages/loginWithEmail.dart';
import 'package:just_listened/utils/widgets.utils.dart';

class PreLoginPage extends StatefulWidget {
  String screenName = "pre_login";

  @override
  _PreLoginPageState createState() => _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kLightGrey,
        body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              child: Column(children: <Widget>[
                // LOGO DO APP
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/preLogin/Logo_IMG.png'),
                      fit: BoxFit.cover,
                      // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop)
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Image.asset(
                          'assets/preLogin/logo.png',
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    RaisedButton.icon(
                      padding: EdgeInsets.all(12),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          LoginWithEmail().screenName,
                        );
                      },
                      label: Text(LOGIN_WITH_EMAIL,
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      icon: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      color: kMainPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    AppSpacer(height: 16),
                    RaisedButton.icon(
                      padding: EdgeInsets.all(12),
                      onPressed: () {},
                      label: Text(LOGIN_WITH_GOOGLE,
                          style: TextStyle(
                            fontSize: 20,
                            color: kMainColor,
                          )),
                      icon: SvgPicture.asset('assets/preLogin/google-icon.svg',
                          height: 24, width: 24),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    AppSpacer(height: 16),
                    RaisedButton.icon(
                      padding: EdgeInsets.all(12),
                      onPressed: () {},
                      label: Text(LOGIN_WITH_SPOTIFY,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                      icon: SvgPicture.asset('assets/preLogin/spotify-icon.svg',
                          height: 24, width: 24),
                      color: kSuccessColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ],
                ),
              ])),
        ));
  }
}
