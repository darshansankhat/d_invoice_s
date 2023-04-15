import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IT_company_scrre extends StatefulWidget {
  const IT_company_scrre({Key? key}) : super(key: key);

  @override
  State<IT_company_scrre> createState() => _IT_company_scrreState();
}

class _IT_company_scrreState extends State<IT_company_scrre> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios_new,size: 25,color: Colors.black,),
          title: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.arrow_drop_down,size:35,color: Colors.blue,),
                SizedBox(width: 25),
                Text("Invoice",style: GoogleFonts.oswald(fontSize: 25,color: Colors.blue),),
              ],
            ),
          ),
          centerTitle: true,
          actions: [

          ],
        ),
      ),
    );
  }
}
