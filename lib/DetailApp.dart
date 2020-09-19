import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

import 'My_Data.dart';

class DetailApp extends StatefulWidget {
  @override
  _DetailAppState createState() => _DetailAppState();
}

class _DetailAppState extends State<DetailApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            height: 150,
            color: Colors.blueAccent,
            child: Center(
                child: Text(
              'Input your information here',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
          ),
          CustomScrollView(
            anchor: 0.25,
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  width: double.maxFinite,
                  height: 1400,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Your Information',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                          // Fist Name TextField
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              controller: txtFirstName,
                              maxLength: 10,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: 'Enter First Name',
                                prefixIcon: Icon(Icons.people),
                              ),
                            ),
                          ),
                          // Last Name TextField
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              controller: txtLastName,
                              maxLength: 20,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: 'Enter Last Name',
                                prefixIcon: Icon(Icons.people),
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            // Gender RadioButton
                            child: Gender(),
                          ),
                          CountryPickerDropdown(
                            initialValue: 'KH',
                            onValuePicked: (Country country) {
                              myCountry = country.name;
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(result),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 150,
          child: RadioListTile(
            title: Text('Male'),
            value: GroupGender.Male,
            groupValue: gender,
            onChanged: (GroupGender value) {
              setState(() {
                gender = value;
                genderValue = 'Male';
              });
            },
          ),
        ),
        Container(
          width: 150,
          child: RadioListTile(
            title: Text('Female'),
            value: GroupGender.Female,
            groupValue: gender,
            onChanged: (GroupGender value) {
              setState(() {
                gender = value;
                genderValue = 'Female';
              });
            },
          ),
        ),
      ],
    );
  }
}
