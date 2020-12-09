import 'package:flutter/material.dart';
import 'package:just_listened/pages/loginWithEmail.dart';
import 'package:just_listened/pages/preLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PreLoginPage().screenName,
      routes: {
        PreLoginPage().screenName: (context) => PreLoginPage(),
        LoginWithEmail().screenName: (context) => LoginWithEmail(),
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
