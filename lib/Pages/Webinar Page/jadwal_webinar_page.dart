import 'package:flutter/material.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class JadwalWebinarPage extends StatelessWidget {
  const JadwalWebinarPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          AppTopBar(
            child: GridTileBar(
              leading:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              title: Text(
                "Jadwal Webinar",
                style: headLine1.copyWith(color: Colors.white),
              ),
            ),
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(197, 197, 197, 1.0)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Container(
                        height: 128,
                        width: 260,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Rectangle 1.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 100,
                        width: 260,
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
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
