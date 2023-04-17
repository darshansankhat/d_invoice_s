import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model_class/Data_model.dart';

List<ItModel> DataList=[

];

class IT_company_scrre extends StatefulWidget {
  const IT_company_scrre({Key? key}) : super(key: key);

  @override
  State<IT_company_scrre> createState() => _IT_company_scrreState();
}

class _IT_company_scrreState extends State<IT_company_scrre> {

  TextEditingController txtname = TextEditingController();
  TextEditingController txtpro = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtdate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_new,
            size: 25,
            color: Colors.black,
          ),
          title: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_drop_down,
                  size: 35,
                  color: Colors.blue,
                ),
                SizedBox(width: 25),
                Text(
                  "Invoice",
                  style: GoogleFonts.oswald(fontSize: 25, color: Colors.blue),
                ),
              ],
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.more_vert,
              size: 30,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [

          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //up
                        Text(
                          "Add",
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                        //name
                        SizedBox(height: 10),
                        TextFormField(
                          controller: txtname,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                              size: 30,
                            ),
                            label: Text(
                              "Name",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                        ),
                        //coerce
                        SizedBox(height: 10),
                        TextFormField(
                          controller: txtpro,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            prefixIcon: Icon(
                              Icons.badge,
                              color: Colors.blue,
                              size: 25,
                            ),
                            label: Text(
                              "it profession",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                        ),
                        //price
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            prefixIcon: Icon(
                              Icons.currency_rupee,
                              color: Colors.blue,
                              size: 30,
                            ),
                            label: Text(
                              "Price",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                        ),
                        //NO
                        SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            prefixIcon: Icon(
                              Icons.phone_sharp,
                              color: Colors.blue,
                            ),
                            label: Text(
                              "Phone",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                        ),
                        //date
                        SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            prefixIcon: Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.blue,
                            ),
                            label: Text(
                              "Date",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                        ),
                        //add Invoice
                        SizedBox(height: 20),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.blue, blurRadius: 5)
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Add +",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Icon(
              Icons.add,
            ),
            backgroundColor: Colors.blue),
      ),
    );
  }
}
