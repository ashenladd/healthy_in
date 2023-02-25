import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/SignUp%20Page/sign_up_page.dart';
import 'package:healthy_in/Pages/Webinar%20Page/detail_pembayaran_page.dart';
import 'package:healthy_in/Pages/Webinar%20Page/jadwal_webinar_page.dart';
import 'package:healthy_in/Pages/Webinar%20Page/live_streaming_page.dart';
import 'package:healthy_in/Pages/Webinar%20Page/pilih_metode_pembayaran_page.dart';
import 'package:healthy_in/Pages/home_page.dart';
import 'package:healthy_in/Pages/login_page.dart';
import 'package:healthy_in/Pages/pembayaran_berhasil_page.dart';
import 'package:healthy_in/Pages/profile_page.dart';
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
      initialRoute: LoginPage.routeName,
      getPages: [
        GetPage(name: SignUpDetail.routeName, page: () => SignUpDetail()),
        GetPage(name: SignUp.routeName, page: () => SignUp()),
        GetPage(
            name: DetailPembayaranPage.routeName,
            page: () => DetailPembayaranPage()),
        GetPage(
            name: DetailWebinarPage.routeName, page: () => DetailWebinarPage()),
        GetPage(
            name: JadwalWebinarPage.routeName, page: () => JadwalWebinarPage()),
        GetPage(
            name: LiveStreamingPage.routeName, page: () => LiveStreamingPage()),
        GetPage(
            name: PilihMetodePembayaranPage.routeName,
            page: () => PilihMetodePembayaranPage()),
        GetPage(
            name: PilihWebinarPage.routeName, page: () => PilihWebinarPage()),
        GetPage(name: HomePage.routeName, page: () => HomePage()),
        GetPage(name: LoginPage.routeName, page: () => LoginPage()),
        GetPage(
            name: PembayaranBerhasilPage.routeName,
            page: () => PembayaranBerhasilPage()),
        GetPage(name: ProfilePage.routeName, page: () => ProfilePage()),
      ],
    );
  }
}
