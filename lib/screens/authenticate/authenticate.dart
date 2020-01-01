import 'package:flutter/material.dart';
import 'package:tahmin_challenge/screens/authenticate/register.dart';
import 'package:tahmin_challenge/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSingIn = true;
  void toggleView() {
    setState(() => showSingIn = !showSingIn);
  }

  @override 
  Widget build(BuildContext context) {
    if (showSingIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
