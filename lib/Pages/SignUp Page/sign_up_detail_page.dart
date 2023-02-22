import 'package:flutter/material.dart';
import 'package:healthy_in/theme/fonts.dart';

import '../../widgets/app_top_bar.dart';

class SignUpDetail extends StatelessWidget {
  const SignUpDetail({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppTopBar(
              width: w,
              height: h,
              child: Center(
                child: Text(
                  "Data Diri",
                  style: headLine1.copyWith(color: Colors.white),
                ),
              ),
            ),
            Container(
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
                    SizedBox(
                      height: 160,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: //Condition ?
                                Color.fromRGBO(191, 225, 248, 1.0)),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: w,
                          child: Center(
                              child: Text("Simpan",
                                  style: subTitle.copyWith(fontSize: 16))),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
