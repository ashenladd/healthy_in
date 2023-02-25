import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';
import 'package:healthy_in/widgets/item_list_view.dart';

import '../../theme/fonts.dart';
import '../../widgets/item_list_view_large.dart';

class PilihWebinarPage extends StatelessWidget {
  static String routeName = '/pilih-webinar-page';
  const PilihWebinarPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          AppTopBar(
            child: GridTileBar(
              leading: IconButton(
                  onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
              title: Text(
                "Webinar",
                style: headLine1.copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Cari Webinar",
                            hintStyle: bodyText1.copyWith(
                                color: Color.fromRGBO(197, 197, 197, 1.0),
                                fontSize: 14),
                            prefixIcon: Icon(Icons.search),
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
                        SizedBox(
                          height: 23,
                        ),
                        Text(
                          'Jadwal Webinarmu',
                          style: subTitle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            height: 100,
                            width: w,
                            decoration: BoxDecoration(
                                border: Border.all(color: blueNormal),
                                borderRadius: BorderRadius.circular(5),
                                color: blueLight),
                            child: ListTile(
                              contentPadding:
                                  EdgeInsets.only(left: 0, right: 0),
                              leading: Image.asset('assets/CekJadwal.png'),
                              title: Text(
                                "Cek Jadwal",
                                style: headLine1.copyWith(fontSize: 16),
                              ),
                              subtitle: Text(
                                "Cek jadwal webinarmu sekarang. Jangan sampai ketinggalan!",
                                style: bodyText1.copyWith(color: greyNormal),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          "Webinar Berlangsung",
                          style: headLine1.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ItemListViewLarge(
                          itemCount: 3,
                          title: Text(
                            "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                            style: subTitle.copyWith(fontSize: 12),
                            maxLines: 2,
                          ),
                          image: AssetImage('assets/Rectangle 1.png'),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_today),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('17 Oktober 2023'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.access_time),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('08.00 - 09.00 WIB'),
                                        ],
                                      )
                                    ],
                                  ),
                                  Text('Gratis')
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Webinar Untukmu",
                          style: headLine1.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ItemListViewLarge(
                          itemCount: 3,
                          title: Text(
                            "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                            style: subTitle.copyWith(fontSize: 12),
                            maxLines: 2,
                          ),
                          image: AssetImage('assets/Rectangle 1.png'),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('17 Oktober 2023'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('08.00 - 09.00 WIB'),
                                      ],
                                    )
                                  ],
                                ),
                                Text('Gratis')
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
