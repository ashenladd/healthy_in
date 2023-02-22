import 'package:flutter/material.dart';
import 'package:healthy_in/Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'healthy.in',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headlineMedium: GoogleFonts.poppins(
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
              titleMedium: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              bodyMedium: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ))),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
