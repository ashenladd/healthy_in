import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';
import 'package:healthy_in/Pages/Booking/booking_detail.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          AppTopBar(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const GridTileBar(
                leading: BackButton(
                  color: Colors.white,
                ),
                title: Text(
                  "Kategori Dokter",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 4, left: 24, right: 24, bottom: 4),
            child: Column(children: [
              TextField(
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  hintText: "Cari",
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Icon(Icons.search),
                  ),
                ),
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
            height: h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Dokter Kandungan'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/kandungan.png')),
                          ),
                          const Text(
                            "Dokter Kandungan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Dokter Gigi'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/gigi.png')),
                          ),
                          const Text(
                            "Dokter Gigi",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(8)),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Dokter THT'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/tht.png')),
                          ),
                          const Text(
                            "Dokter THT",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Dokter Mata'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/mata.png')),
                          ),
                          const Text(
                            "Dokter Mata",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(8)),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Psikologi Klinik'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/psikologi.png')),
                          ),
                          const Text(
                            "Psikologi Klinik",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Dokter Anak'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/anak.png')),
                          ),
                          const Text(
                            "Dokter Anak",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(8)),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Dokter Umum'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/umum.png')),
                          ),
                          const Text(
                            "Dokter Umum",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookingDetail(kata: 'Dokter Hewan'),
                            ));
                      },
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            width: 163,
                            height: 85,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Image(
                                image: AssetImage('images/hewan.png')),
                          ),
                          const Text(
                            "Dokter Hewan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
