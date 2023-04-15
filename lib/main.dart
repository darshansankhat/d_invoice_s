import 'package:d_invoice_s/Scrrens/Home_scrren.dart';
import 'package:d_invoice_s/Scrrens/IT_company_scrren.dart';
import 'package:d_invoice_s/Splash/Splash_scrren.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "/":(context) => Home_scrren(),
        "splash":(context) =>Splash_scrren(),
        "it":(context) =>IT_company_scrre(),
      },
    ),
  );
}