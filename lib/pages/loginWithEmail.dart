import 'package:flutter/material.dart';
import 'package:just_listened/constants/colors.constants.dart';
import 'package:just_listened/utils/widgets.utils.dart';

class LoginWithEmail extends StatefulWidget {
  String screenName = "login_with_email";

  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  TextEditingController _emailController;
  TextEditingController _pwdController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _pwdController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                ),
                _getMainContent(),
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
      ),
    );
  }

  Widget _getMainContent() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          AppFormTextField(
            controller: _emailController,
            iconData: Icons.email,
            labelText: "Email",
            keyboardType: TextInputType.emailAddress,
          ),
          AppSpacer(height: 16),
          AppFormTextField(
            obscureText: true,
            autocorrect: false,
            maxLength: 30,
            controller: _pwdController,
            iconData: Icons.lock,
            labelText: "Senha",
          )
        ],
      ),
    );
  }
}
