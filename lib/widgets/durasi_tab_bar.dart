import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DurasiTabBar extends StatelessWidget {
  DurasiTabBar({super.key});

  List<String> durasi = [
    "30 Menit",
    "60 Menit",
    "90 Menit",
    "120 Menit",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20),
        child: SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.builder(
              itemCount: durasi.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Wrap(children: [
                    Container(
                      height: 30,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(38, 111, 220, 1)),
                          borderRadius: BorderRadius.circular(10)),
                      // ignore: prefer_const_constructors
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              durasi[index],
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(38, 111, 220, 1)),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    )
                  ]),
                );
              }),
        ),
      ),
    );
  }
}
