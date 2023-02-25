import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/Webinar%20Page/jadwal_webinar_page.dart';
import 'package:healthy_in/Pages/home_page.dart';
import 'package:healthy_in/Pages/profile_page.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

import '../../theme/fonts.dart';
import '../../widgets/item_list_view_large.dart';

class PilihWebinarPage extends StatelessWidget {
  static String routeName = '/pilih-webinar-page';
  const PilihWebinarPage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(HomePage.routeName),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/Home.svg',
                        color: whiteDark,
                      ),
                      Text(
                        'Home',
                        style: bodyText1.copyWith(color: whiteDark),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    SvgPicture.asset('assets/Chat.svg'),
                    Text(
                      'Chat',
                      style: bodyText1.copyWith(color: whiteDark),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/Webinar.svg',
                      color: blueNormal,
                    ),
                    Text(
                      'Webinar',
                      style: bodyText1.copyWith(color: blueNormal),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(ProfilePage.routeName),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/Profile.svg'),
                      Text(
                        'Profile',
                        style: bodyText1.copyWith(color: whiteDark),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
      body: Column(
        children: [
          AppTopBar(
            child: GridTileBar(
              leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back)),
              title: Text(
                "Webinar",
                style: headLine1.copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Cari Webinar",
                            hintStyle: bodyText1.copyWith(
                                color: const Color.fromRGBO(197, 197, 197, 1.0),
                                fontSize: 14),
                            prefixIcon: const Icon(Icons.search),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(218, 218, 218, 1.0))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(218, 218, 218, 1.0))),
                          ),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Text(
                          'Jadwal Webinarmu',
                          style: subTitle.copyWith(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(JadwalWebinarPage.routeName);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            height: 100,
                            width: w,
                            decoration: BoxDecoration(
                                border: Border.all(color: blueNormal),
                                borderRadius: BorderRadius.circular(5),
                                color: blueLight),
                            child: ListTile(
                              contentPadding:
                                  const EdgeInsets.only(left: 0, right: 0),
                              leading: Image.asset('assets/CekJadwal.png'),
                              title: Text(
                                "Cek Jadwal",
                                style: headLine1.copyWith(fontSize: 16),
                              ),
                              subtitle: Text(
                                "Cek jadwal webinarmu sekarang. Jangan sampai ketinggalan!",
                                style: bodyText1.copyWith(color: greyNormal),
                              ),
                              trailing: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Text(
                          "Webinar Berlangsung",
                          style: headLine1.copyWith(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ItemListViewLarge(
                          itemCount: 3,
                          title: Text(
                            "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                            style: subTitle.copyWith(fontSize: 12),
                            maxLines: 2,
                          ),
                          image: const AssetImage('assets/Rectangle 1.png'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.calendar_today),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('17 Oktober 2023'),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.access_time),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('08.00 - 09.00 WIB'),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Text('Gratis')
                                ]),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Webinar Untukmu",
                          style: headLine1.copyWith(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ItemListViewLarge(
                          itemCount: 3,
                          title: Text(
                            "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                            style: subTitle.copyWith(fontSize: 12),
                            maxLines: 2,
                          ),
                          image: const AssetImage('assets/Rectangle 1.png'),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.calendar_today),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('17 Oktober 2023'),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(Icons.access_time),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('08.00 - 09.00 WIB'),
                                      ],
                                    )
                                  ],
                                ),
                                const Text('Gratis')
                              ]),
                        ),
                      ])),
            ),
          )
        ],
      ),
    );
  }
}
