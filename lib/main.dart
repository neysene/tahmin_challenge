import 'package:flutter/material.dart';
import 'package:hello_world/models/user.dart';
import 'package:hello_world/screens/wrapper.dart';
import 'package:hello_world/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
