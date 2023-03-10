import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Controller/webinar_controller.dart';
import 'package:healthy_in/Pages/Webinar%20Page/detail_webinar_page.dart';
import 'package:healthy_in/Pages/Webinar%20Page/pilih_webinar_page.dart';
import 'package:healthy_in/Pages/profile_page.dart';

import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';
import 'package:healthy_in/widgets/item_list_view.dart';

import '../theme/colors.dart';

class HomePage extends StatelessWidget {
  User? user = FirebaseAuth.instance.currentUser;
  WebinarController webinarController = Get.put(WebinarController());

  static String routeName = '/home-page';
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    webinarController.getAllWebinar();
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
                Column(
                  children: [
                    SvgPicture.asset('assets/Home.svg'),
                    Text(
                      'Home',
                      style: bodyText1.copyWith(color: blueNormal),
                    )
                  ],
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
                GestureDetector(
                  onTap: () => Get.toNamed(PilihWebinarPage.routeName),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/Webinar.svg'),
                      Text(
                        'Webinar',
                        style: bodyText1.copyWith(color: whiteDark),
                      )
                    ],
                  ),
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
      body: Column(children: [
        AppTopBar(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: GridTileBar(
            leading: GestureDetector(
              onTap: () {
                Get.toNamed(ProfilePage.routeName);
              },
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 19,
                  child: Icon(Icons.person),
                ),
              ),
            ),
            title: Container(
              margin: const EdgeInsets.only(left: 15),
              child: Text(
                "Hai, ${user?.displayName}",
                style: subTitle.copyWith(fontSize: 20),
              ),
            ),
            trailing: const Icon(
              Icons.notifications_outlined,
              size: 35,
            ),
          ),
        )),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Cari",
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
                    height: 24,
                  ),
                  Text('Webinar Untukmu',
                      style: subTitle.copyWith(fontSize: 16)),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GetBuilder<WebinarController>(builder: (context) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: context.allWebinar
                            .take(5)
                            .map((webinar) => GestureDetector(
                                  onTap: () {
                                    Get.toNamed(DetailWebinarPage.routeName,
                                        arguments: webinar);
                                  },
                                  child: ListWebinarWidget(
                                    title: webinar.title,
                                    image: "assets/${"Rectangle 1.png"}",
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.calendar_today),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              webinar.date,
                                              style: bodyText1.copyWith(
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.access_time),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '${webinar.startTime}-${webinar.endTime} WIB',
                                              style: bodyText1.copyWith(
                                                  fontSize: 10),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                            .toList(),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text('Kategori Dokter',
                      style: subTitle.copyWith(fontSize: 16)),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: blueNormal,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundColor: blueLightActive,
                              child: ClipOval(
                                  child: SvgPicture.asset('assets/Bidan.svg')),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Bidan',
                            style: bodyText1,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: blueNormal,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundColor: blueLightActive,
                              child: ClipOval(
                                  child: SvgPicture.asset(
                                      'assets/Dokter_Gigi.svg')),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dokter Gigi',
                            style: bodyText1,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: blueNormal,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundColor: blueLightActive,
                              child: ClipOval(
                                  child: SvgPicture.asset(
                                      'assets/Dokter_THT.svg')),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dokter THT',
                            style: bodyText1,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: blueNormal,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundColor: blueLightActive,
                              child: const Icon(Icons.more_horiz),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lainnya',
                            style: bodyText1,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text('Baca Artikel', style: subTitle.copyWith(fontSize: 16)),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GetBuilder<WebinarController>(builder: (context) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: context.allWebinar
                            .skip(5)
                            .map((webinar) => ListWebinarWidget(
                                  title: webinar.title,
                                  image: "assets/${"Rectangle 2.png"}",
                                  child: Container(
                                    margin: const EdgeInsets.all(2),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: blueNormalHover),
                                        color: blueLightHover,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "Kesehatan Mental",
                                      style: bodyText1.copyWith(
                                          fontSize: 10, color: blueNormalHover),
                                    ),
                                  ),
                                ))
                            .toList(),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
