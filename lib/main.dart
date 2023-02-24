import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/Webinar%20Page/detail_pembayaran_page.dart';
import 'package:healthy_in/Pages/Webinar%20Page/jadwal_webinar_page.dart';
import 'package:healthy_in/Pages/Webinar%20Page/pilih_metode_pembayaran_page.dart';
import 'package:healthy_in/Pages/home_page.dart';
import 'package:healthy_in/Pages/login_page.dart';
import 'package:healthy_in/Pages/pembayaran_berhasil_page.dart';
import 'Pages/SignUp Page/sign_up_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/Webinar Page/detail_webinar_page.dart';
import 'Pages/Webinar Page/pilih_webinar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      home: JadwalWebinarPage(),
    );
  }
}
