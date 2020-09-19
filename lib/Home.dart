import 'package:flutter/material.dart';

import 'DetailApp.dart';
import 'My_Data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: SafeArea(
        child: DetailApp(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: RaisedButton(
            color: Colors.blue,
            child: Text('Add'),
            onPressed: () {
              setState(() {
                result = txtFirstName.text +
                    ' ' +
                    txtLastName.text +
                    '\n' +
                    genderValue +
                    '\n' +
                    myCountry;
              });
            }),
      ),
    );
  }
}
