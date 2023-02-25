import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/home_page.dart';
import 'package:healthy_in/theme/fonts.dart';

import '../../widgets/app_top_bar.dart';

class SignUpDetail extends StatefulWidget {
  static String routeName = '/signup-detail-page';
  const SignUpDetail({super.key});

  @override
  State<SignUpDetail> createState() => _SignUpDetailState();
}

class _SignUpDetailState extends State<SignUpDetail> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();

  bool isButtonEnabled = false;
  bool showPassword = false;
  void changeButtonState() {
    if (nameController.text.length >= 1 &&
        passwordController.text.length >= 6 &&
        passwordConfirmController.text.length >= 6 &&
        passwordController.text == passwordConfirmController.text) {
      isButtonEnabled = true;
    } else {
      isButtonEnabled = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          AppTopBar(
            child: Center(
              child: Text(
                "Data Diri",
                style: headLine1.copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Lengkap',
                        style: bodyText1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: nameController,
                        onChanged: (value) => changeButtonState(),
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(width: 23),
                          hintText: "Masukkan nama lengkap",
                          hintStyle: bodyText1.copyWith(
                              color: Color.fromRGBO(197, 197, 197, 1.0)),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
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
                        height: 15,
                      ),
                      Text(
                        'Kata Sandi',
                        style: bodyText1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: showPassword,
                        controller: passwordController,
                        onChanged: (value) => changeButtonState(),
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(width: 23),
                          hintText: "Masukkan Kata Sandi",
                          hintStyle: bodyText1.copyWith(
                              color: Color.fromRGBO(197, 197, 197, 1.0)),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(218, 218, 218, 1.0))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(218, 218, 218, 1.0))),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color.fromRGBO(218, 218, 218, 1.0),
                            ),
                            onTap: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                              ;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Ulangi Kata Sandi',
                        style: bodyText1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        controller: passwordConfirmController,
                        onChanged: (value) => changeButtonState(),
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(width: 23),
                          hintText: "Konfirmasi Ulang Kata Sandi",
                          hintStyle: bodyText1.copyWith(
                              color: Color.fromRGBO(197, 197, 197, 1.0)),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
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
                    ]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: //Condition ?
                        isButtonEnabled
                            ? Color.fromRGBO(68, 174, 243, 1.0)
                            : Color.fromRGBO(191, 225, 248, 1.0)),
                onPressed: () {
                  if (isButtonEnabled) {
                    Get.toNamed(HomePage.routeName);
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: w,
                  child: Center(
                      child: Text("Simpan",
                          style: subTitle.copyWith(fontSize: 16))),
                )),
          ),
        ],
      ),
    );
  }
}
