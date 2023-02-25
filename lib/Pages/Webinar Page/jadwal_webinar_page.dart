import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/Webinar%20Page/pilih_webinar_page.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class JadwalWebinarPage extends StatelessWidget {
  static String routeName = '/jadwal-webinar-page';
  const JadwalWebinarPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: whiteNormal,
      body: Column(
        children: [
          AppTopBar(
            child: GridTileBar(
              leading: IconButton(
                  onPressed: () {
                    Get.toNamed(PilihWebinarPage.routeName);
                  },
                  icon: Icon(Icons.arrow_back)),
              title: Text(
                "Jadwal Webinar",
                style: headLine1.copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(197, 197, 197, 1.0)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Rectangle 1.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          height: 110,
                          width: double.infinity,
                          color: Colors.white,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                                    style: subTitle.copyWith(fontSize: 12),
                                    maxLines: 2,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_today,
                                                  color: blueNormalActive,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text('17 Oktober 2023'),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.access_time,
                                                    color: blueNormalActive),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text('08.00 - 09.00 WIB'),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                color: blueNormal,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 15),
                                            child: Text(
                                              'Gabung Sekarang',
                                              style: subTitle.copyWith(
                                                  fontSize: 12,
                                                  color: blueLight),
                                            ))
                                      ]),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
