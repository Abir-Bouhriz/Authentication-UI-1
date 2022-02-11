import 'package:flutter/material.dart';
import 'package:sign_up_page/pages/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff4577FA),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xff4577FA),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(1000),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create',
                      style: TextStyle(
                          color: Color(0xff4577FA),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'New Account',
                      style: TextStyle(
                          color: Color(0xff4577FA),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      FontAwesomeIcons.snowman,
                      size: 17.0,
                      color: Color(0xff4577FA),
                    ),
                    fillColor: Colors.white,
                    hintText: 'Name',
                    hintStyle:
                    TextStyle(color: Color(0xffDBDBDB), fontSize: 14.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                      BorderSide(color: Color(0xffCACACA), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                      BorderSide(color: Color(0xff0066B4), width: 2.0),
                    ),
                  ),
                ),
                SizedBox(height: 18.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      FontAwesomeIcons.envelope,
                      size: 17.0,
                      color: Color(0xff4577FA),
                    ),
                    fillColor: Colors.white,
                    hintText: 'Email',
                    hintStyle:
                    TextStyle(color: Color(0xffDBDBDB), fontSize: 14.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                      BorderSide(color: Color(0xffCACACA), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                      BorderSide(color: Color(0xff0066B4), width: 2.0),
                    ),
                  ),
                ),
                SizedBox(height: 18.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      FontAwesomeIcons.lock,
                      size: 17.0,
                      color: Color(0xff4577FA),
                    ),
                    fillColor: Colors.white,
                    hintText: 'Password',
                    hintStyle:
                    TextStyle(color: Color(0xffDBDBDB), fontSize: 14.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                      BorderSide(color: Color(0xffCACACA), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                      BorderSide(color: Color(0xff0066B4), width: 2.0),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Color(0xff4577FA),
                        value: checkedValue,
                        onChanged: (bool value) {
                          setState(
                                () {
                              this.checkedValue = value;
                            },
                          );
                        },
                        //controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                    ),
                    Text(
                      'I agree to the ',
                      style:
                      TextStyle(fontSize: 13.0, color: Color(0xff4577FA)),
                    ),
                    Text(
                      'Terms & Conditions',
                      style:
                      TextStyle(fontSize: 13.0, color: Color(0xffDA4B36)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22.0),
                  child: RaisedButton(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    textColor: Colors.white,
                    onPressed: () {},
                    color: Color(0xff4577FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Text(
                      'Create account',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
                SizedBox(height: 90.0),
                RaisedButton(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  textColor: Color(0xff4577FA),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                  },
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Color(0xff4577FA), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a User ? ',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Log in',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

