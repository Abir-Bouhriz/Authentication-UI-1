import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff4577FA),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[400]),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xff4577FA),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(1000),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 15.0),
            child: Text(
              'Log In',
              style: TextStyle(
                  color: Color(0xff4577FA),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(
                  FontAwesomeIcons.envelope,
                  size: 17.0,
                  color: Color(0xff4577FA),
                ),
                fillColor: Colors.white,
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xffDBDBDB), fontSize: 14.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xffCACACA), width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xff0066B4), width: 2.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(
                  FontAwesomeIcons.lock,
                  size: 17.0,
                  color: Color(0xff4577FA),
                ),
                fillColor: Colors.white,
                hintText: 'Password',
                hintStyle: TextStyle(color: Color(0xffDBDBDB), fontSize: 14.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xffCACACA), width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xff0066B4), width: 2.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            //checkbox
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              textColor: Colors.white,
              onPressed: () {},
              color: Color(0xff4577FA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Text(
                'Log in with your account',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
