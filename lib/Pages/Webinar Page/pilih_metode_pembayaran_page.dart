import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

enum MetodePembayaran { mandiri, bca, bni }

class PilihMetodePembayaranPage extends StatefulWidget {
  const PilihMetodePembayaranPage({super.key});

  @override
  State<PilihMetodePembayaranPage> createState() =>
      _PilihMetodePembayaranPageState();
}

class _PilihMetodePembayaranPageState extends State<PilihMetodePembayaranPage> {
  MetodePembayaran? _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 90,
        color: Colors.white,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: whiteNormalActive, width: 1))),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: //Condition ?
                              Color.fromRGBO(68, 174, 243, 1.0)),
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.all(16.5),
                        child: Center(
                            child: Text("Pilih",
                                style: subTitle.copyWith(fontSize: 14))),
                      )),
                ),
              ],
            )),
      ),
      body: Column(
        children: [
          AppTopBar(
            child: GridTileBar(
              leading:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              title: Text(
                "Metode Pembayaran",
                style: headLine1.copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bank',
                        style: subTitle.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: whiteNormalActive),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(children: [
                          Radio<MetodePembayaran>(
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: MetodePembayaran.mandiri,
                              groupValue: _value,
                              onChanged: (MetodePembayaran? value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                          SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset('assets/mandiri.svg'),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Mandiri Virtual Account',
                            style: bodyText1,
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: whiteNormalActive),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(children: [
                          Radio<MetodePembayaran>(
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: MetodePembayaran.bca,
                              groupValue: _value,
                              onChanged: (MetodePembayaran? value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                          SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset('assets/bca.svg'),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'BCA Virtual Account',
                            style: bodyText1,
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: whiteNormalActive),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(children: [
                          Radio<MetodePembayaran>(
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: MetodePembayaran.bni,
                              groupValue: _value,
                              onChanged: (MetodePembayaran? value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                          SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset('assets/bni.svg'),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'BNI Virtual Account',
                            style: bodyText1,
                          )
                        ]),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
