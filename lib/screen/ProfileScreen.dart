import 'package:flutter/material.dart';
import 'package:flutter_simple_app/widget/RegisterForm.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Update Profile Info"),
          backgroundColor: Colors.amber,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: RegisterForm(),
          ),

        ));
  }
}
