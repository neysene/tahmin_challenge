import 'package:flutter/material.dart';
import 'package:tahmin_challenge/models/tip.dart';
import 'package:tahmin_challenge/services/auth.dart';
import 'package:tahmin_challenge/services/database.dart';
import 'package:provider/provider.dart';
import 'package:tahmin_challenge/screens/home/user_list.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Tip>>.value(
      value: DatabaseService().users,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Tahmin'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ],
        ),
        body: UserList(),
      ),
    );
  }
}