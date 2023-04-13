import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../Model_class/Data_model.dart';

List<ItModel> DataList = [];

class IT_company_scrre extends StatefulWidget {
  const IT_company_scrre({Key? key}) : super(key: key);

  @override
  State<IT_company_scrre> createState() => _IT_company_scrreState();
}

class _IT_company_scrreState extends State<IT_company_scrre> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtpro = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtdate = TextEditingController();

  String? img;

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //list
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return viwe(index);
                  },
                  itemCount: DataList.length,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //up
                          Text(
                            "Add",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                          //img
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              shape: BoxShape.circle,
                            ),
                            child: img == null
                                ? CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/image/p1.png"),
                                  )
                                : CircleAvatar(
                                    backgroundImage: FileImage(File("$img")),
                                  ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () async {
                                    ImagePicker i1 = ImagePicker();
                                    XFile? xfil = await i1.pickImage(
                                        source: ImageSource.camera);
                                    setState(() {
                                      img = xfil!.path;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.camera,
                                    color: Colors.blue,
                                    size: 30,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                  onPressed: () async {
                                    ImagePicker i1 = ImagePicker();
                                    XFile? xfil = await i1.pickImage(
                                        source: ImageSource.gallery);
                                    setState(() {
                                      img = xfil!.path;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.photo,
                                    color: Colors.blue,
                                    size: 30,
                                  )),
                            ],
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
                            controller: txtprice,
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
                          InkWell(
                            onTap: () {
                              setState(() {
                                DataList.add(ItModel(
                                  Name: txtname.text,
                                  price: txtprice.text,
                                  img: img,
                                  phone: txtphone.text,
                                  pro: txtpro.text,
                                  date: txtdate.text,
                                ));
                                txtname.clear();
                                txtprice.clear();
                                txtphone.clear();
                                txtpro.clear();
                                txtdate.clear();
                                img = null;
                              });
                              Navigator.pop(context);
                            },
                            child: Container(
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
                          ),
                        ],
                      ),
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

  Container viwe(int index) {
    return Container(
      height: 125,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue.shade100,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: img == null
                ? CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/image/p1.png"),
                  )
                : CircleAvatar(
                    radius: 30,
                    backgroundImage: FileImage(File('$img')),
                  ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10,top: 20),
                child: Text(
                  "${DataList[index].Name}",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //profation
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "${DataList[index].pro}",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                  ),
                ),
              ),
              //price
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "${DataList[index].price}",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          //name
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 50),
            child: Text(
              "${DataList[index].Name}",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //name
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 50),
            child: Text(
              "${DataList[index].Name}",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
