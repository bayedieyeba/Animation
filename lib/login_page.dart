import 'package:animation/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'delayed_animation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                      child: Container(
                        height: 280,
                        child: Text(
                          "Connect email address",
                          style: GoogleFonts.poppins(
                            color: d_red,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      delay: 1500),
                  SizedBox(
                    height: 22,
                  ),
                  DelayedAnimation(
                      child: Container(
                        height: 280,
                        child: Text(
                          "It's recommanded to connect your email address for us to better protect your informtion",
                          style: GoogleFonts.poppins(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      delay: 1500),
                  SizedBox(
                    height: 35,
                  ),
                  //Login
                  SizedBox(
                    height: 25,
                  ),
                  DelayedAnimation(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: d_red,
                            padding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 125)),
                        child: Text(
                          "Confirm",
                          style: GoogleFonts.poppins(
                            color: d_red,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginForm()));
                        },
                      ),
                      delay: 5500),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          DelayedAnimation(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Your Email',
                  labelStyle: TextStyle(),
                ),
              ),
              delay: 3500),
          SizedBox(
            height: 30,
          ),
          DelayedAnimation(
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ))),
              ),
              delay: 4500)
        ],
      ),
    );
  }
}
