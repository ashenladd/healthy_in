import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Controller/detail_pembayaran_controller.dart';
import 'package:healthy_in/Models/webinar_models.dart';
import 'package:healthy_in/Pages/Webinar%20Page/pilih_metode_pembayaran_page.dart';
import 'package:healthy_in/Pages/pembayaran_berhasil_page.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';

import 'package:healthy_in/widgets/app_top_bar.dart';

class DetailPembayaranPage extends StatelessWidget {
  final Webinar arguments = Get.arguments;
  final DetailPembayaranController detailPembayaranController =
      Get.put(DetailPembayaranController(webinar: Get.arguments));
  static String routeName = '/detail-pembayaran-page';
  DetailPembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
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
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: //Condition ?
                              const Color.fromRGBO(68, 174, 243, 1.0)),
                      onPressed: () {
                        Get.toNamed(PembayaranBerhasilPage.routeName,
                            arguments: arguments);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.5),
                        child: Center(
                            child: Text("Bayar",
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
              "Detail Pembayaran",
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
                  color: whiteLight,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(left: 0, right: 0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/Rectangle 1.png',
                        height: 80,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      arguments.title,
                      style: headLine1.copyWith(
                        fontSize: 12,
                      ),
                      maxLines: 2,
                    ),
                    subtitle: Text(
                      "${arguments.date} - ${arguments.startTime}-${arguments.endTime} WIB",
                      style: bodyText1.copyWith(fontSize: 11),
                    ),
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
                        "Detail Partisipan",
                        style: headLine1.copyWith(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nama Lengkap',
                            style: bodyText1,
                          ),
                          Text(
                            user?.displayName != null
                                ? '${user?.displayName}'
                                : '-',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: bodyText1,
                          ),
                          Text(
                            user?.email != null ? '${user?.email}' : '-',
                            style: bodyText1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'No. Telepon',
                            style: bodyText1,
                          ),
                          Text(
                            user?.phoneNumber != null
                                ? '${user?.phoneNumber}'
                                : '-',
                            style: bodyText1,
                          )
                        ],
                      ),
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
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: whiteNormalActive),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/tabler_discount.svg',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Pakai Kupon Lebih Hemat',
                                style: bodyText1,
                              )
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          )
                        ]),
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
                        "Metode Pembayaran",
                        style: headLine1.copyWith(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(PilihMetodePembayaranPage.routeName,
                              arguments: detailPembayaranController);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: whiteNormalActive),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/ion_card-outline.svg',
                                      width: 20,
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GetBuilder<DetailPembayaranController>(
                                        builder: (context) {
                                      return Text(
                                        context.selectedPayment,
                                        style: bodyText1,
                                      );
                                    })
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                )
                              ]),
                        ),
                      ),
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
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/ph_note.svg',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Ringkasan Pembayaran",
                              style: headLine1.copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Biaya Webinar',
                              style: bodyText1,
                            ),
                            Text(
                              'Rp${arguments.stringPrice}',
                              style: bodyText1,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Biaya Administrasi',
                              style: bodyText1,
                            ),
                            Text(
                              'Rp0',
                              style: bodyText1,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Potongan Harga',
                              style: bodyText1,
                            ),
                            Text(
                              'Rp0',
                              style: bodyText1,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Pembayaran',
                              style: subTitle.copyWith(fontSize: 12),
                            ),
                            Text(
                              'Rp${arguments.stringPrice}',
                              style: subTitle.copyWith(
                                  fontSize: 12, color: blueNormalActive),
                            )
                          ],
                        ),
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
