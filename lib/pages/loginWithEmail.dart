import 'package:flutter/material.dart';
import 'package:just_listened/constants/colors.constants.dart';

class LoginWithEmail extends StatefulWidget {
  String screenName = "login_with_email";

  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey,
      body: Stack(
        children: [
          Container(
            child: Column(children: [
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
                height: MediaQuery.of(context).size.height / 2,
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
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}
