

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xff4577FA),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(500),
            ),
          ),
        ),
      ),
    );
  }
}
