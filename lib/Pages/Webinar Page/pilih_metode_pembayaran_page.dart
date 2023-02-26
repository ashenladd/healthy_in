import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthy_in/Controller/detail_pembayaran_controller.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

enum MetodePembayaran { mandiri, bca, bni }

class PilihMetodePembayaranPage extends StatefulWidget {
  static String routeName = '/pilih-metode-pembayaran-page';
  const PilihMetodePembayaranPage({super.key});

  @override
  State<PilihMetodePembayaranPage> createState() =>
      _PilihMetodePembayaranPageState();
}

class _PilihMetodePembayaranPageState extends State<PilihMetodePembayaranPage> {
  MetodePembayaran? _value;
  DetailPembayaranController detailPembayaranController = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteNormal,
      bottomNavigationBar: BottomAppBar(
        height: 90,
        color: Colors.white,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: whiteNormalActive, width: 1))),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: //Condition ?
                              _value != null
                                  ? const Color.fromRGBO(68, 174, 243, 1.0)
                                  : const Color.fromRGBO(191, 225, 248, 1.0)),
                      onPressed: () {
                        if (_value != null) {
                          detailPembayaranController.metodePembayaran = _value;
                          Get.back();
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.5),
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
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back)),
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
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bank',
                        style: subTitle.copyWith(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
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
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset('assets/mandiri.svg'),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Mandiri Virtual Account',
                            style: bodyText1,
                          )
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
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
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset('assets/bca.svg'),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'BCA Virtual Account',
                            style: bodyText1,
                          )
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
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
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset('assets/bni.svg'),
                          const SizedBox(
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
