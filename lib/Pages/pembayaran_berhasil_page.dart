import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class PembayaranBerhasilPage extends StatelessWidget {
  static String routeName = '/pembayaran-berhasil-page';
  const PembayaranBerhasilPage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blueNormal,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/Success.svg"),
            SizedBox(
              height: 30,
            ),
            Text(
              'Pembayaran Berhasil',
              style: headLine1.copyWith(fontSize: 16, color: Colors.white),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 0.2 * w),
              child: Text(
                'Anda telah melakukan pembayaran webinar sebesar Rp25.000',
                style: bodyText1.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )
          ]),
    );
  }
}
