import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_scrren extends StatefulWidget {
  const Splash_scrren({Key? key}) : super(key: key);

  @override
  State<Splash_scrren> createState() => _Splash_scrrenState();
}

class _Splash_scrrenState extends State<Splash_scrren> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 6),
      () {
        Navigator.pushReplacementNamed(context, "/");
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment(0, 1),
                children: [
                  Image.asset(
                    "assets/image/s1.png",
                    height: 250,
                    width: 250,
                  ),
                  CircularProgressIndicator(
                    color: Colors.blue,
                    backgroundColor: Colors.blue.shade100,
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Darshan Invoice",
                style: GoogleFonts.lobster(fontSize: 30, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
