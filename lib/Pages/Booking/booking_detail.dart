// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';
import 'package:healthy_in/widgets/tab_bar_date.dart';

class BookingDetail extends StatefulWidget {
  final String kata;

  const BookingDetail({Key? key, required this.kata}) : super(key: key);

  @override
  State<BookingDetail> createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  List<String> items = [
    "Pengalaman",
    "Jenis Kelamin",
    "Harga",
  ];

  List<String> pengalaman = [
    "Lebih dari 10 tahun",
    "5-10 tahun",
    "Dibawah 5 tahun",
  ];

  List<bool> isCheckedPengalaman = [
    false,
    false,
    false,
  ];

  List<String> jk = [
    "Laki-Laki",
    "Perempuan",
  ];

  List<bool> isCheckedJk = [
    false,
    false,
  ];

  List<String> harga = [
    "Di bawah Rp25.000",
    "Rp25.000 - Rp100.000",
    "Di atas Rp100.000",
  ];

  List<bool> isCheckedHarga = [
    false,
    false,
    false,
  ];

  List<bool> _isChecked = [false, false, false, false];
  bool nilai = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppTopBar(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: GridTileBar(
                  leading: const BackButton(
                    color: Colors.white,
                  ),
                  title: Text(
                    widget.kata,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: w,
              height: h,
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 24, left: 24, right: 24, bottom: 4),
                  child: Column(children: [
                    TextField(
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0.5,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24, top: 16, bottom: 12),
                      child: Text(
                        "Konsultasi Terkahir",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(12)),
                        Container(
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image(
                            image: AssetImage('images/dokter.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Dr. Budi Hartono",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      width: 80,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(67, 184, 48, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Online",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Spesialis Mata Katarak",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              // ignore: prefer_const_literals_to_create_immutables
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("4.8/5"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.message,
                                            size: 16,
                                            color: Colors.grey,
                                          ),
                                          Text("48 Ulasan"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Rp25.000",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Rekomendasi Dokter",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        if (index == 0) {
                                          return Container(
                                            height: 300,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 30)),
                                                Row(
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      left: 30,
                                                    )),
                                                    Text(
                                                      "Pengalaman",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 150,
                                                                top: 10)),
                                                    Text(
                                                      "Hapus Filter",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  height: 150,
                                                  child: ListView.builder(
                                                    itemCount:
                                                        isCheckedPengalaman
                                                            .length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return CheckboxListTile(
                                                        title: Text(
                                                            pengalaman[index]),
                                                        value:
                                                            isCheckedPengalaman[
                                                                index],
                                                        onChanged: (value) {
                                                          setState(() {
                                                            isCheckedPengalaman[
                                                                index] = value!;
                                                          });
                                                        },
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          // aksi yang dijalankan ketika tombol ditekan
                                                        },
                                                        child: Text('Cancel'),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          // aksi yang dijalankan ketika tombol ditekan
                                                        },
                                                        child: Text('Terapkan'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        } else if (index == 1) {
                                          return Container(
                                            height: 300,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 30)),
                                                Row(
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      left: 30,
                                                    )),
                                                    Text(
                                                      "Jenis Kelamin",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 150,
                                                                top: 10)),
                                                    Text(
                                                      "Hapus Filter",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                    ),
                                                  ],
                                                ),
                                                ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount: isCheckedJk.length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    return CheckboxListTile(
                                                      title: Text(jk[index]),
                                                      value: isCheckedJk[index],
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          isCheckedJk[index] =
                                                              value!;
                                                        });
                                                      },
                                                    );
                                                  },
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          // aksi yang dijalankan ketika tombol ditekan
                                                        },
                                                        child: Text('Cancel'),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          // aksi yang dijalankan ketika tombol ditekan
                                                        },
                                                        child: Text('Terapkan'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        } else {
                                          return Container(
                                            height: 350,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 30)),
                                                Row(
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      left: 30,
                                                    )),
                                                    Text(
                                                      "Harga",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 150,
                                                                top: 10)),
                                                    Text(
                                                      "Hapus Filter",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                    ),
                                                  ],
                                                ),
                                                ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount:
                                                      isCheckedHarga.length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    return CheckboxListTile(
                                                      title: Text(harga[index]),
                                                      value:
                                                          isCheckedHarga[index],
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          isCheckedHarga[
                                                              index] = value!;
                                                        });
                                                      },
                                                    );
                                                  },
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          // aksi yang dijalankan ketika tombol ditekan
                                                        },
                                                        child: Text('Cancel'),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          // aksi yang dijalankan ketika tombol ditekan
                                                        },
                                                        child: Text('Terapkan'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      });
                                },
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
                                            color: Color.fromRGBO(
                                                38, 111, 220, 1)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    // ignore: prefer_const_constructors
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            items[index],
                                            style: TextStyle(fontSize: 12),
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
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(12)),
                        Container(
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image(
                            image: AssetImage('images/dokter.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Dr. Budi Hartono",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      width: 80,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(67, 184, 48, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Online",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Spesialis Mata Katarak",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              // ignore: prefer_const_literals_to_create_immutables
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("4.8/5"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.message,
                                            size: 16,
                                            color: Colors.grey,
                                          ),
                                          Text("48 Ulasan"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Rp25.000",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(12)),
                        Container(
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(191, 225, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image(
                            image: AssetImage('images/dokter.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Dr. Budi Hartono",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      width: 80,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(67, 184, 48, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Online",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Spesialis Mata Katarak",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              // ignore: prefer_const_literals_to_create_immutables
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("4.8/5"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.message,
                                            size: 16,
                                            color: Colors.grey,
                                          ),
                                          Text("48 Ulasan"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Rp25.000",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
