import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          cursorColor: Colors.purple,
        ),
        home: Login(),
      ),
    );

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 100, 16, 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Text(
                        'GOOD MORNING',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 47,
                          color: Colors.white,
                          letterSpacing: 1,
                          fontFamily: 'sf-text',
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 20.0, bottom: 30.0),
                      child: Text(
                        'Lorem Impsum dolor sit amet',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1,
                          fontFamily: 'sf-text',
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'username',
                          labelStyle: TextStyle(
                            color: Colors.grey[100],
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        cursorColor: Color(0x20FFFFFF),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'password',
                          labelStyle: TextStyle(
                            color: Colors.grey[100],
                          ),
                          prefixIcon: Icon(
                            Icons.lock_open,
                            color: Colors.white,
                            size: 30,
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        cursorColor: Color(0x20FFFFFF),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Color(0xFF783F57),
                      width: double.infinity,
                      height: 60.0,
                      child: FlatButton(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 60.0,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            child: FlatButton(
                              child: Text(
                                'Google',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                            height: 60.0,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            child: FlatButton(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                          bottom: BorderSide(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: FlatButton(
                        child: Text(
                          'forgot password?',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: FlatButton(
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
