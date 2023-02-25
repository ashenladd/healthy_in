import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Pages/SignUp%20Page/sign_up_detail_page.dart';
import 'package:healthy_in/theme/fonts.dart';

import '../../widgets/app_top_bar.dart';

class SignUp extends StatefulWidget {
  static String routeName = '/signup-page';
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController phoneNumberController = TextEditingController();

  bool isButtonEnabled = false;

  void changeButtonState() {
    if (phoneNumberController.text.length >= 10) {
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
                "Daftar",
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
                    onChanged: (value) => changeButtonState(),
                    controller: phoneNumberController,
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
                  SizedBox(
                    height: 160,
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
                          Get.toNamed(SignUpDetail.routeName);
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: w,
                        child: Center(
                            child: Text("Daftar",
                                style: subTitle.copyWith(fontSize: 16))),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Sudah punya akun?",
                          style: bodyText1.copyWith(color: Colors.black),
                          children: [
                        TextSpan(
                          text: " Masuk Di sini",
                          style: bodyText1.copyWith(
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.back();
                            },
                        )
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
