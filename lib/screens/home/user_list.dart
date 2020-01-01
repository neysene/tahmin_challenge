import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tahmin_challenge/models/tip.dart';
import 'package:tahmin_challenge/screens/home/tip_tile.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    final tips = Provider.of<List<Tip>>(context);
    
    return ListView.builder(
      itemCount: tips.length,
      itemBuilder: (context, index) {
        return TipTile(tip: tips[index]);
      },
    );
  }
}
