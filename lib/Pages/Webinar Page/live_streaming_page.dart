import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class LiveStreamingPage extends StatefulWidget {
  static String routeName = '/live-streaming-page';
  const LiveStreamingPage({super.key});

  @override
  State<LiveStreamingPage> createState() => _LiveStreamingPageState();
}

class _LiveStreamingPageState extends State<LiveStreamingPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print('Tab bar: ${_tabController.index}');
    return Scaffold(
      backgroundColor: greyLight,
      body: Column(children: [
        AppTopBar(
          child: GridTileBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back)),
            title: Text(
              "Live Streaming",
              style: headLine1.copyWith(color: Colors.white),
            ),
          ),
        ),
        Column(children: [
          Container(
            width: double.infinity,
            height: 198,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/live_stream.png'),
                    fit: BoxFit.cover)),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          Container(
            width: double.infinity,
            color: whiteLight,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(children: [
              Text(
                "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                style: headLine1.copyWith(fontSize: 16),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                color: whiteLight,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TabBar(
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(
                        Icons.back_hand,
                        color: blueNormal,
                      ),
                    ),
                    Tab(
                      icon: Icon(Icons.people, color: blueNormal),
                    ),
                    Tab(
                      icon: Icon(Icons.mic, color: blueNormal),
                    ),
                    Tab(
                      icon: Icon(Icons.message, color: blueNormal),
                    ),
                    Tab(
                      icon: Icon(Icons.video_camera_back_rounded,
                          color: blueNormal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ])
      ]),
    );
  }
}
