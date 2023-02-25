import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Models/webinar_models.dart';
import 'package:healthy_in/Pages/Webinar%20Page/detail_pembayaran_page.dart';

import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

import '../../theme/fonts.dart';

class DetailWebinarPage extends StatelessWidget {
  final Webinar arguments = Get.arguments;
  static String routeName = '/detail-webinar-page';

  DetailWebinarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 90,
        color: Colors.white,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: whiteNormalActive, width: 1))),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: blueNormal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.share_outlined,
                    color: blueNormal,
                    size: 35,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: blueNormal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: blueNormal,
                    size: 35,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: //Condition ?
                              const Color.fromRGBO(68, 174, 243, 1.0)),
                      onPressed: () {
                        Get.toNamed(DetailPembayaranPage.routeName,
                            arguments: arguments);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.5),
                        child: Center(
                            child: Text("Pesan Sekarang",
                                style: subTitle.copyWith(fontSize: 14))),
                      )),
                ),
              ],
            )),
      ),
      backgroundColor: whiteNormal,
      body: Column(children: [
        AppTopBar(
          child: GridTileBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back)),
            title: Text(
              "Detail Webinar",
              style: headLine1.copyWith(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 198,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Rectangle 1.png'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: double.infinity,
                  color: whiteLight,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: blueNormalHover),
                            color: blueLightHover,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Kesehatan Mental",
                          style: bodyText1.copyWith(
                              fontSize: 10, color: blueNormalHover),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        arguments.title,
                        style: headLine1.copyWith(fontSize: 16),
                      ),
                      Divider(
                        thickness: 1,
                        color: whiteNormalActive,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today,
                                        color: blueNormal),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      arguments.date,
                                      style: bodyText1,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time, color: blueNormal),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '${arguments.startTime}-${arguments.endTime} WIB',
                                      style: bodyText1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.attach_money, color: blueNormal),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      arguments.price == 0
                                          ? 'Gratis'
                                          : "Rp${arguments.stringPrice}",
                                      style: bodyText1,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined,
                                      color: blueNormal,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '0/200 Partisipan',
                                      style: bodyText1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: whiteLight,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Detail Webinar",
                          style: headLine1.copyWith(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad",
                          style: bodyText1,
                        )
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: whiteLight,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Syarat dan Ketentuan",
                          style: headLine1.copyWith(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad",
                          style: bodyText1,
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
