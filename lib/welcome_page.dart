import 'package:animation/delayed_animation.dart';
import 'package:animation/main.dart';
import 'package:animation/social_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
          child: Column(
            children: [
              DelayedAnimation(
                  child: Container(
                    height: 170,
                    child: Image.asset('iamges/ariana1.jpg'),
                  ),
                  delay: 1500),
              DelayedAnimation(
                  child: Container(
                    height: 400,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: Image.asset('iamges/ariana2.jpg'),
                  ),
                  delay: 2500),
              DelayedAnimation(
                  child: Container(
                    height: 400,
                    child: Text(
                      'Get fitter, stronger, and embrasse a heltheir lifestyle',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  delay: 3500),
              DelayedAnimation(
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: d_red,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.all(13)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SocialPage()));
                        },
                        child: Text('Get start')),
                  ),
                  delay: 4500),
            ],
          ),
        ),
      ),
    );
  }
}
