import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/login_page.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = '/profile-page';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        AppTopBar(
          child: GridTileBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back)),
            title: Text(
              "Profile",
              style: headLine1.copyWith(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Get.off(LoginPage()),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(color: whiteNormalActive),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Keluar',
                        style:
                            subTitle.copyWith(fontSize: 12, color: Colors.red),
                      )
                    ],
                  ),
                  Icon(
                    Icons.logout,
                    size: 16,
                  )
                ]),
          ),
        ),
      ]),
    );
  }
}
