import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Choice Your Invoice",
            style: GoogleFonts.lobster(fontSize: 25, color: Colors.blue),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.pushNamed(context, "it");
              },child: botton("IT company")),
              SizedBox(height: 30),
              botton("Hotel"),
              SizedBox(height: 30),
              botton("Mall"),
            ],
          ),
        ),
      ),
    );
  }

  Widget botton(String data) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 7,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(500), bottomRight: Radius.circular(500)),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Text(
          "$data",
          style: GoogleFonts.oswald(fontSize: 30, color: Colors.blue),
        ),
      ),
    );
  }
}
