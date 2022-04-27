// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AddEmp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddEmp();
  }
}

class _AddEmp extends State<AddEmp> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController role = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController DOB = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController company = TextEditingController();
  TextEditingController resquetoken = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'View Emplyees List',
          ),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: firstname,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your First Name Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: lastname,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Last Name Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: designation,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Designation Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: role,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Role Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: email,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Email Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: password,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Password Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: mobileno,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Mobile Number Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: DOB,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Date of Birth'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: gender,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Gender'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: company,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Company Name Here'),
                  )),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: resquetoken,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Your resquetoken Here'),
                  )),
              RaisedButton(
                onPressed: () {
                  firstname.text = "";
                  lastname.text = "";
                  designation.text = "";
                },
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here To Save Data'),
              ),
            ],
          ),
        )));
  }
}
