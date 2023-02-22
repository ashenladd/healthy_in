import 'package:flutter/material.dart';

import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        AppTopBar(
            width: w,
            height: h,
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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Cari",
                  hintStyle: bodyText1.copyWith(
                      color: Color.fromRGBO(197, 197, 197, 1.0), fontSize: 14),
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
              Text('Webinar Untukmu', style: subTitle.copyWith(fontSize: 16)),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
