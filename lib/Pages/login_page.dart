import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/SignUp%20Page/sign_up_page.dart';
import 'package:healthy_in/Pages/home_page.dart';
import 'package:healthy_in/theme/fonts.dart';

import '../widgets/app_top_bar.dart';

class LoginPage extends StatefulWidget {
  static String routeName = '/login-page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isButtonEnabled = false;
  bool showPassword = false;

  void changeButtonState() {
    if (passwordController.text.length >= 6 &&
        phoneNumberController.text.length >= 10) {
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
                "Masuk",
                style: headLine1.copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Silahkan masukkan nomor handphone & kata sandi akun Anda yang telah terdaftar untuk masuk ke aplikasi',
                      style: bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  TextField(
                    controller: phoneNumberController,
                    onChanged: (value) => changeButtonState(),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Nomor Handphone",
                      hintStyle: bodyText1.copyWith(
                          color: Color.fromRGBO(197, 197, 197, 1.0)),
                      prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            '+62 ',
                            style: subTitle,
                          )),
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
                    height: 8,
                  ),
                  TextField(
                    controller: passwordController,
                    onChanged: (value) => changeButtonState(),
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      hintText: "Kata Sandi",
                      hintStyle: bodyText1.copyWith(
                          color: Color.fromRGBO(197, 197, 197, 1.0)),
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
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(218, 218, 218, 1.0))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(218, 218, 218, 1.0))),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      GestureDetector(
                        child: Text(
                          "Lupa Kata Sandi?",
                          style: subTitle.copyWith(
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 76,
                  ),
                  ElevatedButton(
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
                            child: Text("Masuk",
                                style: subTitle.copyWith(fontSize: 16))),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Belum punya akun?",
                          style: bodyText1.copyWith(color: Colors.black),
                          children: [
                        TextSpan(
                            text: " Daftar Di sini",
                            style: bodyText1.copyWith(
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.toNamed(SignUp.routeName)),
                      ])),
                  SizedBox(
                    height: 127,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                      text: TextSpan(
                          text: "Ketika masuk atau mendaftar, saya menyetujui",
                          style: bodyText1.copyWith(color: Colors.black),
                          children: [
                            TextSpan(
                                text: " Ketentuan Penggunaan Healty.in+",
                                style: bodyText1.copyWith(
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: " dan", style: bodyText1),
                            TextSpan(
                                text: " Kebijakan Privasi Healty.in+",
                                style: bodyText1.copyWith(
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline)),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
