import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';
import 'package:healthy_in/widgets/item_list_view.dart';

import '../theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        AppTopBar(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: GridTileBar(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 19,
                backgroundColor: Colors.black,
              ),
            ),
            title: Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "Hai, David",
                style: subTitle.copyWith(fontSize: 20),
              ),
            ),
            trailing: Icon(
              Icons.notifications_outlined,
              size: 35,
            ),
          ),
        )),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Cari",
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
                    height: 24,
                  ),
                  Text('Webinar Untukmu',
                      style: subTitle.copyWith(fontSize: 16)),
                  SizedBox(
                    height: 15,
                  ),
                  ItemListView(
                    itemCount: 3,
                    image: AssetImage("assets/${"Rectangle 1.png"}"),
                    title: Text(
                      "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                      style: subTitle.copyWith(fontSize: 12),
                      maxLines: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '17 Oktober 2023',
                              style: bodyText1.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '08:00 - 09.00 WIB',
                              style: bodyText1.copyWith(fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Text('Kategori Dokter',
                      style: subTitle.copyWith(fontSize: 16)),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: blueNormal,
                                child: CircleAvatar(
                                  child: ClipOval(
                                      child:
                                          SvgPicture.asset('assets/Bidan.svg')),
                                  radius: 29,
                                  backgroundColor: blueLightActive,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Bidan',
                                style: bodyText1,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: blueNormal,
                                child: CircleAvatar(
                                  child: ClipOval(
                                      child: SvgPicture.asset(
                                          'assets/Dokter_Gigi.svg')),
                                  radius: 29,
                                  backgroundColor: blueLightActive,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Dokter Gigi',
                                style: bodyText1,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: blueNormal,
                                child: CircleAvatar(
                                  child: ClipOval(
                                      child: SvgPicture.asset(
                                          'assets/Dokter_THT.svg')),
                                  radius: 29,
                                  backgroundColor: blueLightActive,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Dokter THT',
                                style: bodyText1,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: blueNormal,
                                child: CircleAvatar(
                                  child: Icon(Icons.more_horiz),
                                  radius: 29,
                                  backgroundColor: blueLightActive,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lainnya',
                                style: bodyText1,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('Baca Artikel', style: subTitle.copyWith(fontSize: 16)),
                  SizedBox(
                    height: 15,
                  ),
                  ItemListView(
                      itemCount: 3,
                      image: AssetImage("assets/${"Rectangle 2.png"}"),
                      title: Text(
                        "Tips Menghilangkan Stress Karena Tugas yang Menumpuk",
                        style: subTitle.copyWith(fontSize: 10),
                        maxLines: 2,
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: blueNormalHover),
                            color: blueLightHover,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Kesehatan Mental",
                          style: bodyText1.copyWith(
                              fontSize: 10, color: blueNormalHover),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
