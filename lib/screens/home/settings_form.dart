import 'package:flutter/material.dart';
import 'package:tahmin_challenge/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> pick = ['1', '0', '2'];

  //for values
  int _currentGameID;
  String _currentName;
  String _currentPick;
  int _currentStatus;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Update your pick',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => val.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          SizedBox(height: 20.0,),
          //dropdown
          DropdownButtonFormField(
            value: _currentPick ?? '1',
            items: pick.map((pic) {
              return DropdownMenuItem(
                value: pic,
                child: Text('$pic selected'),
              );
            }).toList(),
            onChanged: (val) => setState(() => _currentPick = val ),
          ),
          //slider
          RaisedButton(
            color: Colors.pink[400],
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentGameID);
              print(_currentName);
              print(_currentPick);
              print(_currentStatus);
            }
          ),
        ],
      ),
    );
  }
}