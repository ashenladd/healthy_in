import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Models/webinar_models.dart';
import 'package:healthy_in/Pages/Webinar%20Page/jadwal_webinar_page.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';

class PembayaranBerhasilPage extends StatelessWidget {
  final Webinar arguments = Get.arguments;
  static String routeName = '/pembayaran-berhasil-page';
  PembayaranBerhasilPage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blueNormal,
      body: GestureDetector(
        onTap: () => Get.off(const JadwalWebinarPage()),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/Success.svg"),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Pembayaran Berhasil',
                style: headLine1.copyWith(fontSize: 16, color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 0.2 * w),
                child: Text(
                  'Anda telah melakukan pembayaran webinar sebesar Rp${arguments.stringPrice}',
                  style: bodyText1.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
      ),
    );
  }
}
