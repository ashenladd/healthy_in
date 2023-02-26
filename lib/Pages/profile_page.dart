import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Controller/auth_controller.dart';
import 'package:healthy_in/Pages/home_page.dart';
import 'package:healthy_in/Pages/login_page.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class ProfilePage extends StatelessWidget {
  User? user = FirebaseAuth.instance.currentUser;
  static String routeName = '/profile-page';
  ProfilePage({super.key});

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
                icon: const Icon(Icons.arrow_back)),
            title: Text(
              "Profile",
              style: headLine1.copyWith(color: Colors.white),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: greyLight),
              borderRadius: BorderRadius.circular(30)),
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
            title: Text(
              "Hai, ${user?.displayName}",
              style: subTitle.copyWith(fontSize: 20, color: Colors.black),
            ),
            subtitle: Text(
              user?.phoneNumber != null ? '${user?.phoneNumber}' : '-',
              style: bodyText1.copyWith(color: Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            final AuthController authController = Get.find<AuthController>();
            await authController.signOutGoogle();
            Get.toNamed(LoginPage.routeName);
            ;
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(color: whiteNormalActive),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Keluar',
                        style:
                            subTitle.copyWith(fontSize: 12, color: Colors.red),
                      )
                    ],
                  ),
                  const Icon(
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
