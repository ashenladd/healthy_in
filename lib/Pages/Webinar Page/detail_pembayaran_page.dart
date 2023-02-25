import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';

import 'package:healthy_in/widgets/app_top_bar.dart';

class DetailPembayaranPage extends StatelessWidget {
  static String routeName = '/detail-pembayaran-page';
  const DetailPembayaranPage({super.key});

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
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: //Condition ?
                              Color.fromRGBO(68, 174, 243, 1.0)),
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.all(16.5),
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
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 0),
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
                      'Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu',
                      style: headLine1.copyWith(
                        fontSize: 12,
                      ),
                      maxLines: 2,
                    ),
                    subtitle: Text(
                      "25 Oktober 2023 - 09:00-10:00 WIB",
                      style: bodyText1.copyWith(fontSize: 11),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: whiteLight,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Detail Partisipan",
                        style: headLine1.copyWith(fontSize: 16),
                      ),
                      SizedBox(
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
                            'David Saepudin',
                            style: bodyText1,
                          )
                        ],
                      ),
                      SizedBox(
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
                            'davidsaepudi@gmail.com',
                            style: bodyText1,
                          )
                        ],
                      ),
                      SizedBox(
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
                            '083294829304302',
                            style: bodyText1,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: whiteLight,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
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
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Pakai Kupon Lebih Hemat',
                                style: bodyText1,
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: whiteLight,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Metode Pembayaran",
                        style: headLine1.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Pilih Metode Pembayaran',
                                    style: bodyText1,
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: whiteLight,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Ringkasan Pembayaran",
                              style: headLine1.copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
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
                              'Rp25.000',
                              style: bodyText1,
                            )
                          ],
                        ),
                        SizedBox(
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
                        SizedBox(
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
                        SizedBox(
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
                              'Rp25.000',
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
    ;
  }
}
