import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_up_page/pages/sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff4577FA),
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back, color: Colors.white),
//          onPressed: () {},
//        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Color(0xff4577FA),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      FontAwesomeIcons.solidEnvelope,
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
                      'Remember me ?',
                      style:
                          TextStyle(fontSize: 13.0, color: Color(0xff4577FA)),
                    ),
                    Spacer(),
                    Text(
                      'Forgot password ?',
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
                      'Log in with your account',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Log in with',
                  style: TextStyle(
                      color: Color(0xff4577FA),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton.icon(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          onPressed: () {},
                          color: Color(0xff4577FA),
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            size: 17.0,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton.icon(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          onPressed: () {},
                          color: Color(0xffDB4A39),
                          icon: Icon(
                            FontAwesomeIcons.google,
                            size: 17.0,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Google",
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                RaisedButton(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  textColor: Color(0xff4577FA),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
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
                        'New user ? ',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Create account',
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
