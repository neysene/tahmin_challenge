import 'package:flutter/material.dart';
import 'package:hello_world/models/tip.dart';

class TipTile extends StatelessWidget {

  final Tip tip;
  TipTile({ this.tip });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,  
            backgroundColor: Colors.brown[tip.status],
          ),
          title: Text(tip.name),
          subtitle: Text('Chooses ${tip.pick}'),
        ),
      ),
    );
  }
}